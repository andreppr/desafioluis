Dado("que eu esteja na página do portal online") do
    visit "https://www.americanas.com.br/"
  end
  
  Quando("eu clicar na busca e realizar uma compra") do
    click_link 'notebook'
    click_link '.class="ImageUI-sc-9rtsvr-0 kJNtKk ImageUI-sc-1je0itq-2 eAYdMC'
    click_button :id, 'btn-buy'
    click_button '.class TextUI-sc-1i9za0i-4 gulQE TextUI-sc-12tokcy-0 gYgvXd'
    click_button '.class Wrapper-sc-1i9za0i-3 eNRfkt ViewUI-sc-1ijittn-6 iXIDWU'
   end
  
  Então("valido a presença no carrinho") do
    assert_text "minha cesta"
    should have_context  "href=http://www.americanas.com.br/produto/471642069"
  end