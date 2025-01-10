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
    <Button
      id="button3"
      iconBefore="bold/interface-arrows-left-circle-2"
      text="Back"
    >
      <Event
        event="click"
        method="showPreviousView"
        params={{ ordered: [] }}
        pluginId="container2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
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
  (table1.selectedRow.type === 'Trailer' || 
    table1.selectedRow.type === 'Video Clip')
}}
"
      horizontalAlign="center"
      src="{{ table1.selectedRow.media }}"
    />
    <Video
      id="video1"
      hidden="{{ 
  (table1.selectedRow.type === 'Social Media Post' || 
    table1.selectedRow.type === 'Art' || table1.selectedRow.type === 'Billboard') 
}}
"
      playbackRate={1}
      src="{{ table1.selectedSourceRow.media }}"
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
      value="**Asset Type:** {{ table1.selectedRow.type }}"
      verticalAlign="center"
    />
    <Text
      id="text6"
      horizontalAlign="center"
      value="**Cost:** ${{ table1.selectedRow.spend }}"
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
