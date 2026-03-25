<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Migration_Install_db extends CI_Migration {
	public function up(){
	//tabela de dispositivos
	$this->dbforge->add_field(array(
	'id' => array('type' => 'INT', 'constraint' => 11, 'unsigned' => TRUE, 'auto_increment' => TRUE),
	'device_token' => array('type' => 'varchar', 'constraint' => '255', 'unique', TRUE),
	'nome_dispositvo' => array('type' => 'varchar', 'constraint' => '100', 'null' => TRUE),
	'tipo' => array('type' => 'ENUM("pc", "mobile")', 'default' => 'pc'),
	'ultimo_acesso' => array('type' => 'TIMESTAMP')
		));
	$this->dbforge->add_key('id', TRUE);
	$this->dbforge->create_table('dispositivos', TRUE);
	
	// código da tabela de Download
	$this->dbforge->add_field( array(
		'id' => array('type' => 'INT', 'constraint' => 11, 'unsigned' => TRUE),
		'device_token' => array('type' => 'INT', 'constraint' => 11,'unsigned' => TRUE),
		'origem' => array('type' => 'varchar', 'constraint' => '50'),
		'arquivo_nome' => array('type' =>'varchar', 'constraint' => '255'),
		'progresso' => array('type' => 'int', 'constraint' => 3, 'default' => 0),
		'status' => array('type' => 'ENUM("baixando", "conclúido","erro")', 'default' => 'baixando'),
		'data_registro' => array('type' => 'TIMESTAMP')
	));
	$this->dbforge->add_key('id', TRUE);
	$this->dbforge->create_table('downloads', TRUE);
	}
}
