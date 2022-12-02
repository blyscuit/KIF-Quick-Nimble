# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'
platform :ios, '14.0'
use_frameworks!
inhibit_all_warnings!

def testing_pods
  pod 'Quick', '5.0.1'
  pod 'Nimble', '10.0.0'
  pod 'KIF', :configurations => ['Debug']
end

target 'KifExample' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for KifExample

  target 'KifExampleTests' do
    inherit! :search_paths
    use_frameworks!
  # Pods for testing
    testing_pods
  end

  target 'KifExampleUITests' do
    testing_pods
    # Pods for testing
  end

end
