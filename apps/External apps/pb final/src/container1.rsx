<Container
  id="container1"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fixed"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle1"
      horizontalAlign="center"
      value="#### Selected Asset"
      verticalAlign="center"
    />
  </Header>
  <View id="0400e" viewKey="View 1">
    <Image
      id="image1"
      hidden="{{ 
  (table1.selectedRow.asset_type === 'Trailer' || 
    table1.selectedRow.asset_type === 'Clip')
}}
"
      horizontalAlign="center"
      src="{{ table1.selectedRow.Media }}"
    />
    <Video
      id="video1"
      hidden="{{ 
  (table1.selectedRow.asset_type === 'Social Media Post' || 
    table1.selectedRow.asset_type === 'Art') 
}}
"
      playbackRate={1}
      src="{{ table1.selectedSourceRow.Media }}"
      volume={1}
    />
    <Text
      id="text1"
      horizontalAlign="center"
      value="**{{ table1.selectedRow.asset_name}}**"
      verticalAlign="center"
    />
    <Text
      id="text4"
      horizontalAlign="center"
      value="**Asset Type:** {{ table1.selectedRow.asset_type }}"
      verticalAlign="center"
    />
    <Text
      id="text6"
      horizontalAlign="center"
      value="**Cost:** ${{ table1.selectedRow.money }}"
      verticalAlign="center"
    />
    <Text
      id="text2"
      horizontalAlign="right"
      value="**Language:** {{ table1.selectedRow.language }}"
      verticalAlign="center"
    />
    <Text
      id="text3"
      horizontalAlign="right"
      value="**Country:** {{ table1.selectedRow.country }}"
      verticalAlign="center"
    />
    <Text
      id="text5"
      horizontalAlign="center"
      value="*{{ table1.selectedRow.description }}*"
      verticalAlign="center"
    />
    <Button id="button1" horizontalAlign="right" text="Order Asset">
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="modalFrame2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
