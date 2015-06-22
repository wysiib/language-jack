describe 'Jack grammar', ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('language-jack')

    runs ->
      grammar = atom.grammars.grammarForScopeName('source.jack')

  it 'parses the grammar', ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe 'source.jack'
