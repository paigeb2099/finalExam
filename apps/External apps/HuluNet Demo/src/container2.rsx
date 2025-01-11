<Container
  id="container2"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fixed"
  padding="12px"
  showBody={true}
  showHeader={true}
  style={{ ordered: [{ background: "rgba(255, 255, 255, 1)" }] }}
>
  <Header>
    <Text
      id="containerTitle3"
      horizontalAlign="center"
      value="#### Selected Asset"
      verticalAlign="center"
    />
  </Header>
  <View id="3877e" viewKey="View 1">
    <Image
      id="image1"
      fit="contain"
      heightType="fixed"
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
      style={{
        ordered: [
          { fontSize: "h4Font" },
          { fontWeight: "h4Font" },
          { fontFamily: "h4Font" },
        ],
      }}
      value="**{{ table1.selectedRow.name}}**"
      verticalAlign="center"
    />
    <Text
      id="text5"
      horizontalAlign="center"
      style={{
        ordered: [
          { fontSize: "defaultFont" },
          { fontWeight: "defaultFont" },
          { fontFamily: "defaultFont" },
        ],
      }}
      value="*{{ table1.selectedRow.description }}*"
      verticalAlign="center"
    />
    <Text
      id="text3"
      horizontalAlign="center"
      style={{
        ordered: [
          { fontSize: "labelFont" },
          { fontWeight: "labelFont" },
          { fontFamily: "labelFont" },
        ],
      }}
      value="**Country:** {{ table1.selectedRow.country }}"
      verticalAlign="center"
    />
    <Text
      id="text2"
      horizontalAlign="center"
      style={{
        ordered: [
          { fontSize: "labelFont" },
          { fontWeight: "labelFont" },
          { fontFamily: "labelFont" },
        ],
      }}
      value="**Language:** {{ table1.selectedRow.language }}"
      verticalAlign="center"
    />
    <Text
      id="text6"
      horizontalAlign="center"
      style={{
        ordered: [
          { fontSize: "labelFont" },
          { fontWeight: "labelFont" },
          { fontFamily: "labelFont" },
        ],
      }}
      value="**Cost:** *${{ table1.selectedRow.spend }}*"
      verticalAlign="center"
    />
    <Button
      id="button1"
      heightType="auto"
      style={{
        ordered: [
          { fontSize: "labelFont" },
          { fontWeight: "labelFont" },
          { fontFamily: "labelFont" },
        ],
      }}
      text="Order Asset"
    >
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
