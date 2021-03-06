"
Microdown is a minimal but extensible markup language. It is kind of compatible with githubmarkdown for a core set of feature. 
Read comment of MicroDownParser. 
"
Class {
	#name : #BaselineOfMicrodown,
	#superclass : #BaselineOf,
	#category : #BaselineOfMicrodown
}

{ #category : #baselines }
BaselineOfMicrodown >> baseline: spec [
	<baseline>
	
	spec for: #'common' do: [
		spec baseline: 'PillarDocumentModel' with: [ spec 
				repository: 'github://pillar-markup/pillar:dev-8' ].
		spec 
			package: #'Microdown';
			package: #'Microdown-Tests' with: [ spec requires:  #( #'Microdown') ];
			package: #'Microdown-Pillar' with: [ spec requires:  #( #'Microdown' #'PillarDocumentModel') ];
			package: #'Microdown-Pillar-Tests' with: [
				spec requires:  #(#'Microdown-Pillar' #'Microdown-Tests') ]
		 ]
			

]
