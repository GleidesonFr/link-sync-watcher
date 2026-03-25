<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Api extends CI_Controller
{

	public function registrar_pc()
	{
		// 1. Captura de dados (JSON ou POST)
		$json = file_get_contents('php://input');
		$dados = json_decode($json, TRUE);

		if (empty($dados)) {
			$dados = $this->input->post(null, true);
		}

		// 2. Se não houver dados (seu caso ao abrir o navegador), mostra apenas o TEXTO PURO
		if (empty($dados) || !isset($dados['device_token'])) {
			return $this->output
				->set_content_type('text/plain') // Avisa o navegador que é apenas texto
				->set_output('Aguardando dados do dispositivo...');
		}

		// 3. Se houver dados, processa e responde (Aqui mantemos JSON para o Front-end)
		$sucesso = $this->dispositivos_model->salvar_dispositivos($dados);

		return $this->output
			->set_content_type('application/json')
			->set_output(json_encode([
				'status' => $sucesso,
				'msg'    => $sucesso ? 'Dispositivo sincronizado' : 'Erro no banco'
			]));
	}
}
