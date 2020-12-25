# in src/actions/ai4cr_examples/index.cr
class Ai4crExamples::Index < BrowserAction
  # include Auth::AllowGuests
  # ... errors with the following:
  # web          | Couldn't find overloads for these types:
  # web          |  - Ai4crExamples::IndexPage.new(context : HTTP::Server::Context, user_names : Array(String), current_user : Nil)

  get "/ai4cr_examples" do
    # Renders the Ai4crExamples::IndexPage
    html IndexPage, user_names: ["Paul", "Sally", "Jane"]
  end
end
