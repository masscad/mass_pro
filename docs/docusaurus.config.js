/** @type {import('@docusaurus/types').DocusaurusConfig} */
module.exports = {
  title: "D2Remote (DHIS2 Flutter SDK)",
  url: "https://Hamza-ye.github.io",
  baseUrl: "/d2-remote/",
  onBrokenLinks: "throw",
  onBrokenMarkdownLinks: "warn",
  favicon: "img/favicon.ico",
  organizationName: "Hamza-ye",
  projectName: "d2-remote",
  themeConfig: {
    navbar: {
      title: "D2Remote (DHIS2 Flutter SDK)",
      logo: {
        alt: "D2Remote (DHIS2 Flutter SDK)",
        src: "img/logo.svg",
      },
      items: [
        {
          to: "docs/",
          activeBasePath: "docs",
          label: "Docs",
          position: "left",
        },
        {
          href: "https://github.com/Hamza-ye/d2fsam-flutter-sdk/tree/develop/docs/",
          label: "GitHub",
          position: "right",
        },
      ],
    },
    footer: {
      style: "dark",
      links: [],
      copyright: `Copyright © ${new Date().getFullYear()} Interactive Apps Space.`,
    },
  },
  presets: [
    [
      "@docusaurus/preset-classic",
      {
        docs: {
          sidebarPath: require.resolve("./sidebars.js"),
          editUrl:
            "https://github.com/Hamza-ye/d2fsam-flutter-sdk/edit/develop/docs/",
        },
        theme: {
          customCss: require.resolve("./src/css/custom.css"),
        },
      },
    ],
  ],
};
