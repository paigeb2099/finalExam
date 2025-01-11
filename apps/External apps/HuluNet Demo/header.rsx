<Frame
  id="$header"
  enableFullBleed={null}
  isHiddenOnDesktop={false}
  isHiddenOnMobile={true}
  padding="8px 12px"
  sticky={true}
  style={{ ordered: [{ "primary-surface": "rgba(255, 255, 255, 1)" }] }}
  type="header"
>
  <Image
    id="image2"
    fit="contain"
    heightType="fixed"
    horizontalAlign="center"
    retoolStorageFileId="3eedc3bc-d3d6-4b50-b983-30db86a9ce02"
    src="https://picsum.photos/id/1025/800/600"
    srcType="retoolStorageFileId"
  />
  <Navigation
    id="navigation1"
    itemMode="static"
    retoolFileObject={{ ordered: [] }}
    style={{ ordered: [{ highlightBackground: "rgba(9, 214, 111, 0.31)" }] }}
  >
    <Option
      id="e900d"
      icon="bold/interface-folder-check"
      iconPosition="left"
      itemType="page"
      label="Asset Manager"
      screenTargetId="defaultPage"
    />
    <Option
      id="19347"
      hidden={
        '{{ current_user.groups.some(group => group.name === "publicity") }}'
      }
      icon="bold/money-graph-bar-increase"
      iconPosition="left"
      itemType="page"
      label="Metrics"
      screenTargetId="page1"
    />
  </Navigation>
</Frame>
