module RequestHelpers
  def login_with_oauth(service = :twitter)
    visit "/auth/#{service}"
  end
end