defmodule KeilaWeb.HcaptchaTest do
  use ExUnit.Case
  import KeilaWeb.Hcaptcha

  @valid_hcaptcha "10000000-aaaa-bbbb-cccc-000000000001"
  @invalid_hcaptcha "00000000-aaaa-bbbb-cccc-000000000001"

  test "validate hCaptchas" do
    assert true == captcha_valid?(@valid_hcaptcha)
    assert false == captcha_valid?(@invalid_hcaptcha)
    assert false == captcha_valid?("")
  end
end
