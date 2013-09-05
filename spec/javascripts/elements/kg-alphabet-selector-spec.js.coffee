# use require to load any .js file available to the asset pipeline

describe "kg-alphabet-selector", ->
  it "the element exists on the page", ->
    loadFixtures 'alphabet_selector_fixture'
    expect($('kg-alphabet-selector').size()).toEqual(1)

