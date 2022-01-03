
class MyAppZss {
	static const String ZSS = """
		<ZSS>
			<RULE SEL="EzTextField.searchField">
                <decoration->
			        <InputDecoration>
			            <border->
			                <OutlineInputBorder />
			            </border->
			            <labelText->"Search"</labelText->
			        </InputDecoration>
			    </decoration->
            </RULE>
            
            <RULE SEL="Row.spaceBetween">
                <mainAxisAlignment->
					MainAxisAlignment.spaceBetween 
				</mainAxisAlignment->
            </RULE>
            
            <RULE SEL="EzIconButton">
                <color->Colors.blue</color->
            </RULE>
		</ZSS>
	""";
}