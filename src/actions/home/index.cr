class Home::Index < BrowserAction
  include Auth::AllowGuests

  get "/" do
    if current_user?
      # redirect Me::Show
      redirect Ai4crExamples::Index
    else
      # When you're ready change this line to:
      #
      #   redirect SignIns::New
      #
      # Or maybe show signed out users a marketing page:
      #
      #   html Marketing::IndexPage
      html Lucky::WelcomePage
      # html Ai4crExamples::IndexPage
      # redirect SignIns::New
    end
  end
end
