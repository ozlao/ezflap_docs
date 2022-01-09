const {description} = require('../../package')

// generate sitemap: https://www.xml-sitemaps.com/
// check for broken links: https://www.brokenlinkcheck.com/

module.exports = {
	/**
	 * Ref：https://v1.vuepress.vuejs.org/config/#title
	 */
	title: 'ezFlap',
	/**
	 * Ref：https://v1.vuepress.vuejs.org/config/#description
	 */
	description: description,

	/**
	 * Extra tags to be injected to the page HTML `<head>`
	 *
	 * ref：https://v1.vuepress.vuejs.org/config/#head
	 */
	head: [
		['meta', {name: 'theme-color', content: '#3eaf7c'}],
		['meta', {name: 'apple-mobile-web-app-capable', content: 'yes'}],
		['meta', {name: 'apple-mobile-web-app-status-bar-style', content: 'black'}],
		[
			"link", {
				rel: "shortcut icon",
				href: "/favicon.png",
			},
		],
		[
			"link", {
				rel: "apple-touch-icon",
				href: "/favicon.png",
			},
		],
		[
			"script", {
				src: "/scripts/scroll-to-hash.js",
			}
		],
		[
			"script", {
				async: "",
				src: "https://www.googletagmanager.com/gtag/js?id=G-P8G05FRV2Q",
			}
		],
		[
			"script",
			{ },
			`
				window.dataLayer = window.dataLayer || [];
				function gtag(){dataLayer.push(arguments);}
				gtag('js', new Date());
				
				gtag('config', 'G-P8G05FRV2Q');
			`,
		],
	],

	/**
	 * Theme configuration, here is the default theme configuration for VuePress.
	 *
	 * ref：https://v1.vuepress.vuejs.org/theme/default-theme-config.html
	 */
	themeConfig: {
		repo: '',
		editLinks: false,
		docsDir: '',
		editLinkText: '',
		//lastUpdated: 'Last Updated',
		nav: [
			{
				text: 'Guide',
				link: '/essentials/introduction/introduction',
			},
		],

		//sidebarDepth: 2,
		//displayAllHeaders: false,
		sidebar: [
			{
				title: "Essentials",
				collapsable: false,
				children: [
					{
						title: "Installation",
						path: "/essentials/installation/installation",
					},
					{
						title: "Introduction",
						path: "/essentials/introduction/introduction",
					},
					{
						title: "ZML",
						path: "/essentials/zml/zml",
					},
					{
						title: "Bound Fields",
						path: "/essentials/bound-fields/bound-fields",
					},
					{
						title: "Loops",
						path: "/essentials/loops/loops",
					},
					{
						title: "Conditional Rendering",
						path: "/essentials/conditional-rendering/conditional-rendering",
					},
					{
						title: "Computed",
						path: "/essentials/computed/computed",
					},
					{
						title: "Bound Methods",
						path: "/essentials/bound-methods/bound-methods",
					},
					{
						title: "Watches",
						path: "/essentials/watches/watches",
					},
					{
						title: "ZSS",
						path: "/essentials/zss/zss",
					},
					{
						title: "Life-Cycle",
						path: "/essentials/life-cycle/life-cycle",
					},
					{
						title: "Transformers",
						path: "/essentials/transformers/transformers",
					},
				],
			},
			{
				title: "Deep Dive",
				collapsable: false,
				children: [
					{
						title: "Props",
						path: "/deep-dive/props/props",
					},
					{
						title: "Events",
						path: "/deep-dive/events/events",
					},
					{
						title: "Models",
						path: "/deep-dive/models/models",
					},
					{
						title: "Slots",
						path: "/deep-dive/slots/slots",
					},
					{
						title: "Refs",
						path: "/deep-dive/refs/refs",
					},
					{
						title: "Dependency Injection",
						path: "/deep-dive/di/di",
					},
					{
						title: "Reactive Data Entities",
						path: "/deep-dive/reactive-data-entities/reactive-data-entities",
					},
					{
						title: "Routing",
						path: "/deep-dive/routing/routing",
					},
					{
						title: "JSON",
						path: "/deep-dive/json/json",
					},
					{
						title: "Core Widgets",
						path: "/deep-dive/core-widgets/core-widgets",
					},
				],
			},
			{
				title: "Advanced",
				collapsable: false,
				children: [
					{
						title: "Widget Inheritance",
						path: "/advanced/widget-inheritance/widget-inheritance",
					},
					{
						title: "ZBuild",
						path: "/advanced/z-build/z-build",
					},
					{
						title: "ZGroup",
						path: "/advanced/z-group/z-group",
					},
					{
						title: "Interpolated Text",
						path: "/advanced/interpolated-text/interpolated-text",
					},
					{
						title: "Interoperability",
						path: "/advanced/interoperability/interoperability",
					},
				],
			},
			{
				title: "Testing",
				collapsable: false,
				children: [
					{
						title: "Introduction",
						path: "/testing/introduction/introduction",
					},
					{
						title: "Initialize",
						path: "/testing/initialize/initialize",
					},
					{
						title: "Mock",
						path: "/testing/mock/mock",
					},
				],
			},
			{
				title: "Tooling",
				collapsable: false,
				children: [
					{
						title: "Pink Sections",
						path: "/tooling/pink-sections/pink-sections",
					},
					{
						title: "Live Templates",
						path: "/tooling/live-templates/live-templates",
					},
					{
						title: "Enable Tabs",
						path: "/tooling/enable-tabs/enable-tabs",
					},
				],
			},
			{
				title: "Troubleshooting",
				collapsable: false,
				children: [
					{
						title: "Build Errors",
						path: "/troubleshooting/build-errors/build-errors",
					},
				],
			},
			{
				title: "Misc",
				collapsable: false,
				children: [
					{
						title: "Code of Conduct",
						path: "/misc/code-of-conduct/code-of-conduct",
					},
					{
						title: "Contribute",
						path: "/misc/contribute/contribute",
					},
					{
						title: "Code Style",
						path: "/misc/code-style/code-style",
					},
				],
			},
		],
	},

	/**
	 * Apply plugins，ref：https://v1.vuepress.vuejs.org/zh/plugin/
	 */
	plugins: {
		"@vuepress/plugin-back-to-top": { },
		"@vuepress/plugin-medium-zoom": { },

		// https://github.com/lorisleiva/vuepress-plugin-seo
		// https://v1.vuepress.vuejs.org/guide/frontmatter.html#alternative-frontmatter-formats
		"seo": {
			//siteTitle: (_, $site) => "HELLO WORLD 1",
			//title: (_, $site) => "HELLO WORLD 2",
			//description: (_, $site) => "HELLO WORLD 3",
			//author: (_, $site) => "HELLO WORLD 4",
		},

	},

	markdown: {
		lineNumbers: true,
	},
}
