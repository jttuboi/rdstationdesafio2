require 'test_helper'

class PessoaTest < ActiveSupport::TestCase
  fixtures :pessoas

  def test_pessoa_validacao
    fix_ok = [:completo, :nao_obrigatorios]
    fix_nao_ok = [:user_id_vazio, :company_vazio, :last_name_vazio, :email_errado, :vazio, :name_maior_40, :last_name_maior_80]
    
    fix_ok.each do |f|
      pessoa = Pessoa.new
      pessoa.name      = pessoas(f).name
      pessoa.last_name = pessoas(f).last_name
      pessoa.email     = pessoas(f).email
      pessoa.company   = pessoas(f).company
      pessoa.job_title = pessoas(f).job_title
      pessoa.phone     = pessoas(f).phone
      pessoa.website   = pessoas(f).website
      pessoa.user_id   = pessoas(f).user_id
      assert pessoa.save, "MSG: Pessoa não foi salvo.\nFIXTURE: :#{f}\nERRO: #{pessoa.errors.inspect}\n"
    end
    
    fix_nao_ok.each do |f|
      pessoa = Pessoa.new
      pessoa.name      = pessoas(f).name
      pessoa.last_name = pessoas(f).last_name
      pessoa.email     = pessoas(f).email
      pessoa.company   = pessoas(f).company
      pessoa.job_title = pessoas(f).job_title
      pessoa.phone     = pessoas(f).phone
      pessoa.website   = pessoas(f).website
      pessoa.user_id   = pessoas(f).user_id
      assert !pessoa.save, "MSG: Pessoa foi salvo e não devia.\nFIXTURE: :#{f}\n"
    end
    
  end
end
