Puppet::Type.newtype(:car) do
  @doc = "Create a new car."

  newparam(:name, :namevar => true) do
    desc "Name of the car"
    p 'this is not the car you are looking for'
  end

  def refresh
  end

end
