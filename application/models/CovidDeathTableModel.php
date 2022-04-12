<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class CovidDeathTableModel extends CI_Model {
 
    var $table = 'residents';
    var $column_order = array(null,'firstname','middlename','lastname','national_id', 'alias','birthdate','civilstatus','gender','voterstatus','resident_type', 'pwd'); //set column field database for datatable orderable
    var $column_search = array('firstname','middlename','lastname','status','civilstatus','gender','voterstatus','resident_type', 'pwd'); //set column field database for datatable searchable 
    var $order = array('id' => 'asc'); // default order 
 
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
 
    private function _get_datatables_query()
    {
        $this->db->select('*, covid_status.remarks as remarks, residents.remarks as r_remarks');
        $this->db->from($this->table);
 
        $i = 0;
     
        foreach ($this->column_search as $item) // loop column 
        {
            if($_POST['search']['value']) // if datatable send POST for search
            {
                
                 
                if($i===0) // first loop
                {
                   
                    $this->db->group_start(); // open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
                   
                    $this->db->like($item, $_POST['search']['value']);
                    
                }
                else
                {
                    $this->db->or_like($item, $_POST['search']['value']);
                }
 
                if(count($this->column_search) - 1 == $i) //last loop
                    $this->db->group_end(); //close bracket
            }
            $i++;
        }

        $this->db->join('covid_status ', 'residents.id=covid_status.resident_id');

        if(isset($_POST['order'])) // here order processing
        {
            $this->db->where('resident_type', 'Deceased');
            $this->db->like('residents.remarks', 'Covid');
            $this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
        } 
        else if(isset($this->order))
        {
            $this->db->where('resident_type', 'Deceased');
            $this->db->like('residents.remarks', 'Covid');
            $order = $this->order;
            $this->db->order_by(key($order), $order[key($order)]);
        }
    }
 
    function get_datatables()
    {
        $this->_get_datatables_query();
        if($_POST['length'] != -1)
        $this->db->limit($_POST['length'], $_POST['start']);
        $query = $this->db->get();
        return $query->result();
    }
 
    function count_filtered()
    {
        $this->_get_datatables_query();
        $query = $this->db->get();
        return $query->num_rows();
    }
 
    public function count_all()
    {
        $this->db->from($this->table);
        return $this->db->count_all_results();
    }
 
}