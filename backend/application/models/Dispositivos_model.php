<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dispositivos_model extends CI_Model {
	public function __construct()
	{
		parent::__construct();
	}
	public function salvar_dispositivos($dados){
		if (!isset($dados['device_token'])){
			return false;
		}
		$data_db = [
			'device_token' => $dados['device_token'],
			'nome_dispositivo' => $dados['nome_dispositivo'] ?? 'desconhecido',
			'tipo' => $dados['tipo'] ?? 'pc',
			'ultimo_acesso' => date('Y-m-d H:i:s')
		];

		$this->db->where('device_token', $data_db['device_token']);
		$query = $this->db->get('dispositivos');

		if ($query->num_rows() > 0){
			$this->db->where('device_token', $data_db['device_token']);
			return $this->db->update('dispositivos', $data_db);
		} else {
			return $this->db->insert('dispositivos', $data_db);
		}
	}
	public function buscar_todos()
	{
		// Retorna todos os dispositivos para o dashboard
		return $this->db->get('dispositivos')->result_array();
	}
}
