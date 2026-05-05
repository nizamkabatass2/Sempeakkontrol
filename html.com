Öğe seçilmedi 

İçeriğe atla
Gmail ürününü ekran okuyucularla birlikte kullanma
7.763 ileti dizisinden 1.
İçerik Kontrol Tool'u Deneme
Gelen Kutusu

Feyzan Aybar
Ekler
13:22 (30 dakika önce)
Alıcı: ben

Nizam selam,

Bu toolu çalıştırabiliyor musun? Çalıştırabiliyorsan eğer birkaç deneme yapıp bana notlarını iletir misin? Güzel bir sonuç elde edersek bundan sonra bunu kullanacağız. Geri dönüşünü bekliyorum.

Kolaylıklar,
İyi çalışmalar dilerim,

--
	
 linkedin	
Feyzan Ece Aybar
instagram	Content Consultant
feyzan.aybar@sempeak.com
facebook	+90 216 550 01 35
sempeak.com
twitter	Sırmaperde sk. No:25/3 Üsküdar/İstanbul

Please consider the environment before printing this email
 Bir ek
  •  Gmail tarafından tarandı
<!DOCTYPE html>
<html lang="tr">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Sempeak SEO Analiz & Değerlendirme Aracı - v22</title>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/mammoth/1.6.0/mammoth.browser.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/3.11.174/pdf.min.js"></script>
  <script>
    if (typeof pdfjsLib !== 'undefined') {
      pdfjsLib.GlobalWorkerOptions.workerSrc = 'https://cdnjs.cloudflare.com/ajax/libs/pdf.js/3.11.174/pdf.worker.min.js';
    }
  </script>

  <style>
    :root {
      --primary: #2563eb; --primary-hover: #1d4ed8; --secondary: #64748b;
      --bg-color: #f8fafc; --card-bg: #ffffff; --text-main: #334155; --text-dark: #0f172a;
      --text-soft: #64748b; --border: #e2e8f0; --success: #10b981; --fail: #ef4444;
      --warning: #f59e0b; --info: #0ea5e9; --shadow: 0 4px 18px rgba(15, 23, 42, 0.08);
    }
    body.dark-mode {
      --bg-color: #0f172a; --card-bg: #1e293b; --text-main: #cbd5e1;
      --text-dark: #f8fafc; --text-soft: #94a3b8; --border: #334155;
      --shadow: 0 4px 18px rgba(0, 0, 0, 0.5);
    }
    * { box-sizing: border-box; }
    body { font-family: "Segoe UI", system-ui, sans-serif; background-color: var(--bg-color); color: var(--text-main); margin: 0; padding: 20px; transition: 0.3s; }
    .top-bar { max-width: 1300px; margin: 0 auto 20px auto; display: flex; justify-content: space-between; align-items: center; background: var(--card-bg); padding: 15px 25px; border-radius: 12px; box-shadow: var(--shadow); }
    select, button { padding: 8px 12px; border-radius: 6px; border: 1px solid var(--border); background: var(--bg-color); color: var(--text-main); font-weight: 600; cursor: pointer; }
    .app-layout { max-width: 1300px; margin: 0 auto; display: grid; grid-template-columns: 1.3fr 1fr; gap: 25px; align-items: start; }
    .card { background: var(--card-bg); padding: 25px; border-radius: 12px; box-shadow: var(--shadow); margin-bottom: 25px; border: 1px solid var(--border); }
    .sidebar { position: sticky; top: 20px; max-height: calc(100vh - 40px); overflow-y: auto; padding-right: 5px; }
    ::-webkit-scrollbar { width: 6px; } ::-webkit-scrollbar-thumb { background: #cbd5e1; border-radius: 10px; }

    .form-group { margin-bottom: 20px; }
    label { display: block; font-weight: 600; margin-bottom: 8px; font-size: 14px; color: var(--text-dark); }
    textarea, input[type="text"] { width: 100%; padding: 12px 14px; border: 1px solid var(--border); border-radius: 8px; font-size: 14px; font-family: inherit; color: var(--text-dark); background: var(--bg-color); }
    #focus-keyword, #semantic-keywords, #batch-focus-keyword, #batch-semantic-keywords { min-height: 80px; }
    #content-input { min-height: 300px; }

    button.primary-btn { width: 100%; border: none; padding: 14px 24px; font-size: 16px; font-weight: 700; border-radius: 8px; color: #fff; background-color: var(--primary); transition: 0.2s;}
    button.primary-btn:disabled { background-color: var(--secondary); cursor: not-allowed; }

    .score-container { display: flex; justify-content: space-between; align-items: center; margin-bottom: 20px; padding-bottom: 15px; border-bottom: 2px dashed var(--border); }
    .score-badge { padding: 10px 20px; border-radius: 30px; font-weight: 900; color: white; font-size: 24px; }
    .score-high { background-color: var(--success); } .score-mid { background-color: var(--warning); } .score-low { background-color: var(--fail); }
    .stats-grid { display: grid; grid-template-columns: repeat(2, 1fr); gap: 10px; margin-bottom: 20px; }
    .stat-card { background: var(--bg-color); padding: 15px; border-radius: 10px; border: 1px solid var(--border); text-align: center; }
    .stat-card h3 { font-size: 11px; color: var(--text-soft); margin: 0 0 5px 0; text-transform: uppercase; letter-spacing: 0.5px; }
    .stat-card p { margin: 0; font-size: 20px; font-weight: 800; color: var(--text-dark); }

    .sem-detail-list { margin-top: 10px; padding-top: 10px; border-top: 1px solid var(--border); text-align: left; font-size: 12px; max-height:180px; overflow-y:auto; }
    .sem-detail-item { display: flex; justify-content: space-between; margin-bottom: 4px; color: var(--text-main); gap: 10px; }
    .sem-detail-item span.count { font-weight: bold; color: var(--success); white-space: nowrap; }

    .checklist { list-style: none; padding: 0; margin: 0; }
    .checklist li { padding: 12px 14px; border-bottom: 1px solid var(--border); display: flex; align-items: flex-start; gap: 12px; font-size: 13px; line-height: 1.5; border-radius: 6px; margin-bottom: 8px; transition: 0.2s; }
    .check-pass { color: var(--success); } .check-fail { color: var(--fail); }

    /* Mode Toggle */
    .mode-toggle { display: flex; gap: 10px; margin-bottom: 20px; }
    .mode-toggle button { flex: 1; padding: 12px; border: 2px solid var(--border); border-radius: 8px; cursor: pointer; font-weight: 600; background: var(--bg-color); color: var(--text-main); transition: 0.2s; }
    .mode-toggle button.active { border-color: var(--primary); background: var(--primary); color: white; }

    .single-input-section { display: block; }
    .single-input-section.hidden { display: none; }
    .batch-input-section { display: none; }
    .batch-input-section.active { display: block; }

    .file-drop-zone { border: 2px dashed var(--border); border-radius: 8px; padding: 30px; text-align: center; cursor: pointer; transition: 0.2s; background: rgba(14, 165, 233, 0.05); }
    .file-drop-zone:hover { border-color: var(--primary); background: rgba(14, 165, 233, 0.1); }
    .file-drop-zone.drag-over { border-color: var(--primary); background: rgba(14, 165, 233, 0.15); }

    .selected-files { margin-top: 15px; padding: 12px; background: var(--bg-color); border-radius: 8px; display: none; }
    .selected-files.show { display: block; }
    .selected-files li { padding: 6px 0; text-align: left; }

    .batch-result-item { border: 1px solid var(--border); border-radius: 8px; margin-bottom: 12px; overflow: hidden; }
    .batch-result-header { padding: 14px; cursor: pointer; background: var(--bg-color); display: flex; justify-content: space-between; align-items: center; font-weight: 600; user-select: none; transition: 0.2s; }
    .batch-result-header:hover { background: rgba(37, 99, 235, 0.08); }

    .accordion-arrow { transition: transform 0.2s; display: inline-block; }
    .batch-result-header.active .accordion-arrow { transform: rotate(90deg); }

    .batch-result-content { padding: 14px; border-top: 1px solid var(--border); display: none; }
    .batch-result-header.active + .batch-result-content { display: block; }

    /* Batch Items Config */
    .batch-config-item { background: var(--bg-color); padding: 15px; border-radius: 8px; border: 1px solid var(--border); margin-bottom: 12px; }
    .batch-config-item-header { display: flex; justify-content: space-between; align-items: center; margin-bottom: 12px; font-weight: 600; flex-wrap: wrap; gap: 10px; }
    .batch-config-item-title { color: var(--text-dark); flex: 1; min-width: 150px; }
    .batch-config-delete-btn { background: #ef4444; color: white; border: none; padding: 6px 10px; border-radius: 4px; cursor: pointer; font-size: 12px; font-weight: 600; transition: 0.2s; }
    .batch-config-delete-btn:hover { opacity: 0.85; }
    .batch-config-inputs { display: grid; grid-template-columns: 1fr 1fr; gap: 12px; }
    .batch-config-inputs textarea { min-height: 60px; margin-top: 0; margin-bottom: 0; padding: 8px 10px; }

    .results-wrapper { display: none; }
    .results-wrapper.show { display: block; }
  </style>
</head>
<body>

  <div class="top-bar">
    <img src="https://www.sempeak.com/yuklemeler/imaj/logo.svg" alt="Sempeak" style="max-width:120px;">
    <button id="dark-mode-toggle">🌙 Mod Değiştir</button>
  </div>

  <div class="app-layout">
    <div class="main-column">

      <!-- Mode Toggle -->
      <div class="card">
        <div class="mode-toggle">
          <button id="single-mode-btn" class="active">🔹 Tek Analiz</button>
          <button id="batch-mode-btn">📦 Toplu Analiz</button>
        </div>
      </div>

      <!-- Single Mode Form -->
      <div id="single-input-section" class="card single-input-section">
        <div class="form-group">
          <label>Anahtar Kelime (Virgül veya alt alta):</label>
          <textarea id="focus-keyword" placeholder="örn: laptop fiyatları, oyun bilgisayarı"></textarea>
        </div>
        <div class="form-group">
          <label>Semantik Kelimeler (Virgül veya alt alta):</label>
          <textarea id="semantic-keywords" placeholder="örn: rtx 4060, fps, ram..."></textarea>
        </div>
        <div class="form-group">
          <label>İçerik Metni:</label>
          <textarea id="content-input" placeholder="İçeriğinizi buraya yapıştırın..."></textarea>
        </div>
        <button id="analyze-btn" class="primary-btn">🚀 İçeriği Analiz Et</button>
      </div>

      <!-- Batch Mode Form -->
      <div id="batch-input-section" class="card batch-input-section">
        <div class="form-group">
          <label>DOCX Dosyaları (Maksimum 10):</label>
          <div class="file-drop-zone" id="file-drop-zone">
            <p style="margin: 0; font-weight: 600; color: var(--text-dark);">📁 Dosyaları buraya sürükleyin veya tıklayın</p>
            <p style="margin: 8px 0 0 0; font-size: 12px; color: var(--text-soft);">Desteklenen: .docx, .doc, .txt</p>
          </div>
          <input type="file" id="batch-file-input" style="display:none;" multiple accept=".docx,.doc,.txt">
        </div>

        <!-- Batch Items Config - Her dosya için ayrı keyword alanları -->
        <div id="batch-items-config" style="margin-top: 20px; display: none;">
          <!-- Dinamik olarak doldurulacak -->
        </div>

        <button id="batch-analyze-btn" class="primary-btn" style="display:none; margin-top: 15px;">🚀 Toplu Analiz Başlat</button>
      </div>

      <!-- Single Mode Results -->
      <div class="card results-wrapper" id="single-results">
        <h3>📋 İçerik Yönergesi Kontrol</h3>
        <ul id="guideline-items" class="checklist" style="margin-top:15px;"></ul>
      </div>

    </div>

    <div class="sidebar">
      <div class="card results-wrapper" id="sidebar-results">
        <h3 style="font-size: 14px; margin-top:0; border-bottom: 1px solid var(--border); padding-bottom: 5px;">Temel SEO Analizi</h3>
        <div class="stats-grid">
          <div class="stat-card">
            <h3>Toplam Kelime</h3>
            <p id="word-count">0</p>
          </div>
          <div class="stat-card">
            <h3 style="color: #ef4444;">Ana Kelime</h3>
            <p><span id="pure-focus-count">0</span>x <span style="font-size:14px; color:var(--text-soft);">(%<span id="focus-density-card">0</span>)</span></p>
          </div>
          <div class="stat-card" style="grid-column: span 2;">
            <h3 style="color: #10b981;">Semantik Kullanım</h3>
            <p id="semantic-stats">0/0</p>
            <div id="semantic-details" class="sem-detail-list"></div>
          </div>
        </div>
      </div>

      <!-- Batch Results Container -->
      <div class="card results-wrapper" id="batch-results-container">
        <h3 style="font-size: 14px; border-bottom: 1px solid var(--border); padding-bottom: 5px;">📦 Toplu Analiz Sonuçları</h3>
        <div id="batch-items-list" style="margin-top: 15px;"></div>
      </div>
    </div>
  </div>

  <script>
    const $ = (id) => document.getElementById(id);
    let batchFiles = []; // [{file, fileName, title, focusKeyword, semanticKeywords}]

    function escapeHTML(str) { return String(str).replace(/[&<>'"]/g, (tag) => ({"&": "&amp;", "<": "&lt;", ">": "&gt;", "'": "&#39;", '"': "&quot;"}[tag] || tag)); }
    function normalizeText(text) { return String(text).toLocaleLowerCase("tr-TR").normalize("NFC").replace(/[''`´"]/g, "").replace(/[^\p{L}\p{N}\s]+/gu, " ").replace(/\s+/g, " ").trim(); }

    function cleanContent(text) {
      let cleaned = text.replace(/^#+\s+/gm, "");
      cleaned = cleaned.replace(/<[^>]*>/g, " ");
      cleaned = cleaned.replace(/[\t\r]/g, " ");
      cleaned = cleaned.replace(/\s+/g, " ");
      return cleaned.trim();
    }

    function smartSplitParagraphs(text) {
      let cleaned = text.replace(/\r\n/g, "\n");
      if (cleaned.includes("\n\n")) {
        return cleaned.split(/\n\n+/).filter(p => p.trim().length > 20).map(p => p.trim());
      }
      const sentences = text.split(/(?<=[.!?])\s+/);
      let paras = []; let currentPara = []; let wordCount = 0;
      for (const sent of sentences) {
        currentPara.push(sent);
        wordCount += getWords(sent).length;
        if (wordCount > 100) { paras.push(currentPara.join(" ")); currentPara = []; wordCount = 0; }
      }
      if (currentPara.length > 0) paras.push(currentPara.join(" "));
      return paras.filter(p => p.trim().length > 0);
    }

    function smartSplitSentences(text) {
      const sentences = text.split(/(?<=[.!?])\s+/);
      return sentences.filter(s => s.trim().length > 0);
    }

    function getWords(text) { return text.match(/[\p{L}\p{N}]+/gu) || []; }
    function dedupeKeywords(kws) { const seen = new Set(); return kws.filter(k => { const n = normalizeText(k); if(!n || seen.has(n)) return false; seen.add(n); return true; }); }

    function tokenizeWithIndex(text) {
      const regex = /[\p{L}\p{N}]+/gu; const tokens = []; let match;
      while ((match = regex.exec(text)) !== null) tokens.push({ raw: match[0], norm: normalizeText(match[0]), start: match.index, end: match.index + match[0].length });
      return tokens;
    }

    function stemToken(token) {
      let t = normalizeText(token); if (!t) return "";
      const suffixes = ["larınızdan","lerinizden","larımızdan","lerimizden","larınızla","lerinizle","larımızla","lerimizle","larınızın","lerinizin","larımızın","lerimizin","larınıza","lerinize","larımıza","lerimize","larını","lerini","larımızı","lerimizi","larından","lerinden","larımızda","lerimizde","larında","lerinde","larından","lerinden","larınız","leriniz","larımız","lerimiz","lardan","lerden","larla","lerle","ların","lerin","lara","lere","ları","leri","larda","lerde","dan","den","tan","ten","ın","in","un","ün","ı","i","u","ü","a","e","da","de","ta","te","na","ne","nı","ni","nu","nü","nın","nin","nun","nün","lar","ler"];
      for (const s of suffixes) if (t.length > s.length + 2 && t.endsWith(s)) { t = t.slice(0, -s.length); break; }
      return t;
    }

    function countOccurrences(contentTokens, keyword, mode="strict") {
      const kwTokens = getWords(normalizeText(keyword));
      if (!kwTokens.length) return { count: 0 };
      let count = 0;
      const matcher = (a, b) => a === b || stemToken(a) === stemToken(b);

      for (let i = 0; i <= contentTokens.length - kwTokens.length; i++) {
        let matched = true;
        for (let j = 0; j < kwTokens.length; j++) if (!matcher(contentTokens[i+j].norm, kwTokens[j])) { matched = false; break; }
        if (matched) { count++; }
      }
      return { count };
    }

    // ===== PURE ANALYSIS FUNCTION =====
    function analyzeContent(content, focusInputs, semanticInputs) {
      const rawText = cleanContent(content);
      const totalWords = getWords(rawText).length;
      const contentTokens = tokenizeWithIndex(rawText);
      const sentences = smartSplitSentences(rawText);
      const paragraphs = smartSplitParagraphs(rawText);

      // Focus keyword analysis
      let focusCount = 0;
      focusInputs.forEach(kw => { const res = countOccurrences(contentTokens, kw, "strict"); focusCount += res.count; });

      // Semantic analysis
      let semFound = 0;
      let semDetails = {};
      semanticInputs.forEach(kw => {
        const res = countOccurrences(contentTokens, kw, "semantic");
        if(res.count > 0) { semFound++; semDetails[kw] = res.count; }
      });

      const focusDensity = totalWords > 0 ? (focusCount / totalWords) * 100 : 0;

      // Guideline checks
      const guidelineChecks = [];
      const primaryKeyword = focusInputs[0] ? normalizeText(focusInputs[0]) : "";
      const firstSentence = sentences[0] ? sentences[0].trim() : "";
      const firstParagraph = paragraphs[0] ? paragraphs[0].trim() : "";

      // Check 1: Primary keyword in first 50 words
      if(primaryKeyword) {
        const firstFiftyTokens = contentTokens.slice(0, 50).map(t => t.norm);
        const kwTokens = getWords(normalizeText(focusInputs[0]));
        let primaryInFirst50 = false;

        for (let i = 0; i <= firstFiftyTokens.length - kwTokens.length; i++) {
          let matched = true;
          for (let j = 0; j < kwTokens.length; j++) {
            if (!(firstFiftyTokens[i+j] === kwTokens[j] || stemToken(firstFiftyTokens[i+j]) === stemToken(kwTokens[j]))) {
              matched = false;
              break;
            }
          }
          if (matched) { primaryInFirst50 = true; break; }
        }

        guidelineChecks.push({
          rule: "Ana anahtar kelime ilk 50 sözcükte",
          pass: primaryInFirst50,
          detail: primaryInFirst50 ? "✓ Bulundu" : "✕ İlk 50 sözcükte yok"
        });

        // Check 1.5: Primary keyword in first paragraph
        const firstParaTokens = getWords(normalizeText(firstParagraph));
        let primaryInFirstPara = false;

        for (let i = 0; i <= firstParaTokens.length - kwTokens.length; i++) {
          let matched = true;
          for (let j = 0; j < kwTokens.length; j++) {
            if (!(firstParaTokens[i+j] === kwTokens[j] || stemToken(firstParaTokens[i+j]) === stemToken(kwTokens[j]))) {
              matched = false;
              break;
            }
          }
          if (matched) { primaryInFirstPara = true; break; }
        }

        guidelineChecks.push({
          rule: "Ana anahtar kelime ilk paragrafta",
          pass: primaryInFirstPara,
          detail: primaryInFirstPara ? "✓ Bulundu" : "✕ İlk paragrafta yok"
        });

        // Check 2: Density 2.0-3.0%
        const densityOk = focusDensity >= 2.0 && focusDensity <= 3.0;
        guidelineChecks.push({
          rule: "Ana anahtar kelime yoğunluğu %2.5 (±0.5)",
          pass: densityOk,
          detail: `${focusDensity.toFixed(2)}% (${focusCount}x / ${totalWords} kelime)`
        });

        // Check 2.5: Keyword distribution
        let keywordCounts = [];
        paragraphs.forEach(para => {
          const res = countOccurrences(tokenizeWithIndex(para), focusInputs[0], "strict");
          keywordCounts.push(res.count);
        });
        const maxInOnePara = Math.max(...keywordCounts, 0);
        const isDist = maxInOnePara <= Math.ceil(focusCount / 2);
        guidelineChecks.push({
          rule: "Anahtar kelimeler homojen dağılmış",
          pass: isDist,
          detail: isDist ? "✓ Dengeli" : `✕ En fazla bir paragrafta ${maxInOnePara} kez`
        });
      }

      // Check 3: Semantic keywords once each
      const semanticOnceEach = semanticInputs.length > 0 && semFound === semanticInputs.length;
      guidelineChecks.push({
        rule: "Semantik kelimeler (birer kez)",
        pass: semanticOnceEach,
        detail: `${semFound}/${semanticInputs.length} bulundu`
      });

      // Check 4: Paragraph length check
      const longParagraphs = paragraphs.filter(p => getWords(p).length > 150).length;
      guidelineChecks.push({
        rule: "Paragraf uzunluğu ≤150 kelime",
        pass: longParagraphs === 0,
        detail: longParagraphs === 0 ? "✓ Tümü uygun" : `✕ ${longParagraphs} uzun paragraf`
      });

      // Check 5: Sentence length check
      const longSentences = sentences.filter(s => getWords(s).length > 20).length;
      guidelineChecks.push({
        rule: "Cümle uzunluğu ≤20 kelime",
        pass: longSentences === 0,
        detail: longSentences === 0 ? "✓ Tümü uygun" : `✕ ${longSentences} uzun cümle`
      });

      // Check 6: No -mektedir/-maktadır
      const badEndings = /-(mektedir|maktadır)\b/gi;
      const badEndingCount = (rawText.match(badEndings) || []).length;
      guidelineChecks.push({
        rule: "-mektedir/-maktadır eki kullanılmadı",
        pass: badEndingCount === 0,
        detail: badEndingCount === 0 ? "✓ Yok" : `✕ ${badEndingCount} yer`
      });

      // Check 7: Second person or passive voice
      const secondPersonCheck = /\bsiz\b|biliyor\s+sunuz|uyar|\s+ılır\s|\s+ilir\s|\s+ulur\s|\s+ülür\s|-ilmek|-ilmak|-ılmak|-ulmak|-ülmek/gi;
      const hasSecondPerson = secondPersonCheck.test(rawText);
      guidelineChecks.push({
        rule: "Siz hitabı veya edilgen fiil kullanılmış",
        pass: hasSecondPerson,
        detail: hasSecondPerson ? "✓ Bulundu" : "✕ Bulunamadı"
      });

      // Check 8: Call to action
      const callToActions = /bahis|oynamaya|yönlendir|tıkla|katıl|gir|başla|ziyaret|göz|dene|oku/gi;
      const hasCTA = callToActions.test(rawText);
      guidelineChecks.push({
        rule: "Call to action (eylem) cümlesi",
        pass: hasCTA,
        detail: hasCTA ? "✓ Bulundu" : "✕ Bulunamadı"
      });

      // Check 9: Uniqueness
      guidelineChecks.push({
        rule: "İçerik %100 özgün olmalı",
        pass: null,
        detail: "🤖 AI tarafından kontrol edilecek"
      });

      // Check 10: Objective tone
      const personalOpinions = /bence|benim düşünceme|sanırım|tahminimce|gibi geliyor|diye düşün|imho|imo/gi;
      const hasPersonal = personalOpinions.test(rawText);
      guidelineChecks.push({
        rule: "İçerik nesnel ve tarafsız",
        pass: !hasPersonal,
        detail: !hasPersonal ? "✓ Uygun" : `✕ Kişisel görüş bulundu`
      });

      // Check 11: Heading hierarchy
      const hasValidHeadings = rawText.includes("#") || !rawText.includes("# ");
      guidelineChecks.push({
        rule: "Başlık hiyerarşisi uygun",
        pass: hasValidHeadings !== false,
        detail: "📝 Başlık yapısı düzenli olmalıdır"
      });

      return {
        wordCount: totalWords,
        focusCount: focusCount,
        focusDensity: focusDensity.toFixed(2),
        semanticFound: semFound,
        semanticTotal: semanticInputs.length,
        semanticDetails: semDetails,
        guidelineChecks: guidelineChecks,
        usedFocusKeywords: focusInputs.join(", "),
        usedSemanticKeywords: semanticInputs.join(", ")
      };
    }

    // ===== SINGLE MODE ANALYSIS =====
    function runAnalysis() {
      const content = $("content-input").value;
      if (!content.trim()) return alert("Lütfen içerik girin.");

      const focusInputs = dedupeKeywords($("focus-keyword").value.split(/[\n,]+/).map(i => i.trim()).filter(Boolean));
      const semanticInputs = dedupeKeywords($("semantic-keywords").value.split(/[\n,]+/).map(i => i.trim()).filter(Boolean));

      if (!focusInputs.length) return alert("Lütfen anahtar kelime girin.");

      const analysis = analyzeContent(content, focusInputs, semanticInputs);

      // Render single results
      $("word-count").textContent = analysis.wordCount;
      $("pure-focus-count").textContent = analysis.focusCount;
      $("focus-density-card").textContent = analysis.focusDensity;

      $("semantic-stats").textContent = `${analysis.semanticFound}/${analysis.semanticTotal}`;

      let semHtml = "";
      for (const [kw, count] of Object.entries(analysis.semanticDetails)) {
        semHtml += `<div class="sem-detail-item"><span>${escapeHTML(kw)}</span><span class="count">${count} kez</span></div>`;
      }
      $("semantic-details").innerHTML = semHtml || "<div style='color:var(--text-soft)'>Semantik kelime girilmedi.</div>";

      // Render guidelines
      let guidelineHTML = "";
      analysis.guidelineChecks.forEach(check => {
        let bgColor = "transparent";
        let iconColor = "var(--text-soft)";
        let icon = "○";

        if (check.pass === true) {
          bgColor = "rgba(16, 185, 129, 0.08)";
          iconColor = "var(--success)";
          icon = "✓";
        } else if (check.pass === false) {
          bgColor = "rgba(239, 68, 68, 0.08)";
          iconColor = "var(--fail)";
          icon = "✕";
        } else {
          bgColor = "rgba(14, 165, 233, 0.08)";
          iconColor = "var(--info)";
          icon = "●";
        }

        guidelineHTML += `<li style="background: ${bgColor}; border-left: 3px solid ${iconColor};">
          <span style="color:${iconColor}; font-weight:bold; font-size:16px;">${icon}</span>
          <div><strong style="color:var(--text-dark)">${check.rule}</strong><br><span style="color:var(--text-soft); font-size:11px;">${check.detail}</span></div>
        </li>`;
      });
      $("guideline-items").innerHTML = guidelineHTML;

      // Show single results
      $("sidebar-results").classList.add("show");
      $("single-results").classList.add("show");
      $("batch-results-container").classList.remove("show");
    }

    // ===== BATCH PROCESSING =====
    function switchMode(mode) {
      const singleSection = $("single-input-section");
      const batchSection = $("batch-input-section");
      const singleBtn = $("single-mode-btn");
      const batchBtn = $("batch-mode-btn");

      // Clear results
      $("sidebar-results").classList.remove("show");
      $("single-results").classList.remove("show");
      $("batch-results-container").classList.remove("show");

      // Reset batch items
      batchFiles = [];
      $("batch-items-config").innerHTML = "";
      $("batch-analyze-btn").style.display = "none";

      if (mode === "single") {
        singleSection.classList.remove("hidden");
        batchSection.classList.remove("active");
        singleBtn.classList.add("active");
        batchBtn.classList.remove("active");
      } else {
        singleSection.classList.add("hidden");
        batchSection.classList.add("active");
        singleBtn.classList.remove("active");
        batchBtn.classList.add("active");
      }
    }

    function handleFileSelection(files) {
      batchFiles = Array.from(files).slice(0, 10).map((file, idx) => {
        const fileName = file.name;
        const titleName = fileName.replace(/\.[^/.]+$/, "").slice(0, 50); // Remove extension, limit length
        return {
          file: file,
          fileName: fileName,
          title: titleName,
          focusKeyword: "",
          semanticKeywords: ""
        };
      });

      // Dinamik UI'ı oluştur
      renderBatchConfigItems();

      // Analiz butonunu göster
      $("batch-analyze-btn").style.display = batchFiles.length > 0 ? "block" : "none";
    }

    function renderBatchConfigItems() {
      const container = $("batch-items-config");
      container.innerHTML = "";

      batchFiles.forEach((item, idx) => {
        const configItem = document.createElement("div");
        configItem.className = "batch-config-item";
        configItem.innerHTML = `
          <div class="batch-config-item-header">
            <span class="batch-config-item-title">📄 ${escapeHTML(item.title)}</span>
            <button type="button" class="batch-config-delete-btn" onclick="removeBatchItem(${idx})">✕ Sil</button>
          </div>
          <div class="batch-config-inputs">
            <div class="form-group" style="margin: 0;">
              <label style="margin-bottom: 6px; font-size: 12px;">Ana Anahtar Kelime:</label>
              <textarea id="batch-focus-${idx}" class="batch-focus-input" placeholder="örn: laptop fiyatları" style="margin: 0;"></textarea>
            </div>
            <div class="form-group" style="margin: 0;">
              <label style="margin-bottom: 6px; font-size: 12px;">Semantik Kelimeler:</label>
              <textarea id="batch-semantic-${idx}" class="batch-semantic-input" placeholder="örn: rtx, fps, ram" style="margin: 0;"></textarea>
            </div>
          </div>
        `;
        container.appendChild(configItem);
      });

      container.style.display = batchFiles.length > 0 ? "block" : "none";

      // Event listeners'ı ekle
      document.querySelectorAll(".batch-focus-input").forEach((input, idx) => {
        input.addEventListener("change", (e) => {
          batchFiles[idx].focusKeyword = e.target.value;
        });
        // İlk yüklenen değerleri input'a set et
        input.value = batchFiles[idx].focusKeyword;
      });

      document.querySelectorAll(".batch-semantic-input").forEach((input, idx) => {
        input.addEventListener("change", (e) => {
          batchFiles[idx].semanticKeywords = e.target.value;
        });
        input.value = batchFiles[idx].semanticKeywords;
      });
    }

    function removeBatchItem(idx) {
      batchFiles.splice(idx, 1);
      renderBatchConfigItems();
      $("batch-analyze-btn").style.display = batchFiles.length > 0 ? "block" : "none";
    }

    function extractTextFromFile(file) {
      return new Promise((resolve, reject) => {
        const reader = new FileReader();

        if (file.type === "text/plain" || file.type === "") {
          reader.onload = () => resolve(reader.result);
          reader.onerror = () => reject(new Error("Metin dosyası okunamadı"));
          reader.readAsText(file);
        } else if (file.type.includes("word") || file.name.endsWith(".docx") || file.name.endsWith(".doc")) {
          reader.onload = () => {
            mammoth.extractRawText({arrayBuffer: reader.result})
              .then(result => resolve(result.value))
              .catch(err => reject(err));
          };
          reader.onerror = () => reject(new Error("DOCX dosyası okunamadı"));
          reader.readAsArrayBuffer(file);
        } else {
          reject(new Error("Desteklenmeyen dosya türü"));
        }
      });
    }

    function startBatchAnalysis() {
      if (batchFiles.length === 0) {
        alert("Lütfen en az bir dosya seçin.");
        return;
      }

      // Validate: her dosyanın başında en az bir anahtar kelimesi olmalı
      const invalidItem = batchFiles.find(item => !item.focusKeyword || !item.focusKeyword.trim());
      if (invalidItem) {
        alert("Lütfen tüm dosyalar için ana anahtar kelime girin.");
        return;
      }

      processBatch(batchFiles);
    }

    function processBatch(items) {
      let completed = 0;
      const results = [];

      items.forEach((item, idx) => {
        extractTextFromFile(item.file).then(text => {
          const focusInputs = dedupeKeywords(item.focusKeyword.split(/[\n,]+/).map(i => i.trim()).filter(Boolean));
          const semanticInputs = dedupeKeywords(item.semanticKeywords.split(/[\n,]+/).map(i => i.trim()).filter(Boolean));

          const analysis = analyzeContent(text, focusInputs, semanticInputs);
          results[idx] = {
            fileName: item.fileName,
            title: item.title,
            analysis: analysis
          };
          completed++;

          if (completed === items.length) {
            renderBatchResults(results);
          }
        }).catch(err => {
          console.error("Dosya okuma hatası:", err);
          results[idx] = {
            fileName: item.fileName,
            title: item.title,
            error: err.message
          };
          completed++;

          if (completed === items.length) {
            renderBatchResults(results);
          }
        });
      });
    }

    function renderBatchResults(results) {
      const container = $("batch-items-list");
      container.innerHTML = "";

      results.forEach((result, idx) => {
        if (result.error) {
          container.innerHTML += `
            <div class="batch-result-item">
              <div class="batch-result-header" style="background: rgba(239, 68, 68, 0.08); border-left: 3px solid #ef4444;">
                📄 ${escapeHTML(result.fileName)}
                <span class="accordion-arrow">▶</span>
              </div>
              <div class="batch-result-content">
                <p style="color: #ef4444; font-weight: 600;">⚠️ Hata: ${escapeHTML(result.error)}</p>
              </div>
            </div>
          `;
          return;
        }

        const analysis = result.analysis;

        // Create checklist HTML
        let checklistHTML = "";
        analysis.guidelineChecks.forEach(check => {
          let bgColor = "transparent";
          let iconColor = "var(--text-soft)";
          let icon = "○";

          if (check.pass === true) {
            bgColor = "rgba(16, 185, 129, 0.08)";
            iconColor = "var(--success)";
            icon = "✓";
          } else if (check.pass === false) {
            bgColor = "rgba(239, 68, 68, 0.08)";
            iconColor = "var(--fail)";
            icon = "✕";
          } else {
            bgColor = "rgba(14, 165, 233, 0.08)";
            iconColor = "var(--info)";
            icon = "●";
          }

          checklistHTML += `<li style="background: ${bgColor}; border-left: 3px solid ${iconColor}; padding: 8px 12px; margin-bottom: 6px; border-radius: 4px; list-style: none; display: flex; align-items: flex-start; gap: 8px;">
            <span style="color:${iconColor}; font-weight:bold; margin-top: 2px;">${icon}</span>
            <div style="flex: 1;">
              <strong style="color:var(--text-dark); font-size: 12px; display: block;">${check.rule}</strong>
              <span style="color:var(--text-soft); font-size: 11px;">${check.detail}</span>
            </div>
          </li>`;
        });

        // Create semantic details
        let semanticHTML = "";
        for (const [kw, count] of Object.entries(analysis.semanticDetails)) {
          semanticHTML += `<div style="display: flex; justify-content: space-between; margin-bottom: 4px; font-size: 12px;"><span>${escapeHTML(kw)}</span><span style="font-weight: bold; color: var(--success);">${count}x</span></div>`;
        }

        if (!semanticHTML) {
          semanticHTML = `<div style="font-size: 12px; color: var(--text-soft);">Semantik kelime bulunamadı</div>`;
        }

        // Build accordion item
        const itemHeader = `
          <div class="batch-result-item">
            <div class="batch-result-header">
              📄 ${escapeHTML(result.title)} — ${analysis.wordCount} kelime
              <span class="accordion-arrow">▶</span>
            </div>
            <div class="batch-result-content">
              <div style="margin-bottom: 12px; padding-bottom: 12px; border-bottom: 1px solid var(--border);">
                <div style="font-size: 11px; color: var(--text-soft); text-transform: uppercase; margin-bottom: 6px;">🔑 Kullanılan Kelimeler</div>
                <div style="font-size: 12px;">
                  <div><strong style="color: var(--text-dark);">Ana KW:</strong> <span style="color: var(--text-main);">${escapeHTML(result.analysis.usedFocusKeywords)}</span></div>
                  <div><strong style="color: var(--text-dark);">Semantik:</strong> <span style="color: var(--text-main);">${escapeHTML(result.analysis.usedSemanticKeywords)}</span></div>
                </div>
              </div>

              <div class="stats-grid" style="margin-bottom: 15px;">
                <div class="stat-card">
                  <h3>Toplam Kelime</h3>
                  <p>${analysis.wordCount}</p>
                </div>
                <div class="stat-card">
                  <h3 style="color: #ef4444;">Ana Kelime</h3>
                  <p>${analysis.focusCount}x <span style="font-size:12px; color:var(--text-soft);">(%${analysis.focusDensity})</span></p>
                </div>
                <div class="stat-card" style="grid-column: span 2;">
                  <h3 style="color: #10b981;">Semantik Kullanım</h3>
                  <p>${analysis.semanticFound}/${analysis.semanticTotal}</p>
                  <div style="font-size: 12px; margin-top: 8px; border-top: 1px solid var(--border); padding-top: 8px;">
                    ${semanticHTML}
                  </div>
                </div>
              </div>

              <div style="border-top: 1px solid var(--border); padding-top: 12px;">
                <h4 style="font-size: 12px; margin: 0 0 8px 0; color: var(--text-soft); text-transform: uppercase; letter-spacing: 0.5px;">📋 İçerik Yönergesi Kontrol</h4>
                <ul style="list-style: none; padding: 0; margin: 0;">
                  ${checklistHTML}
                </ul>
              </div>
            </div>
          </div>
        `;

        container.innerHTML += itemHeader;
      });

      // Add accordion toggle listeners
      document.querySelectorAll(".batch-result-header").forEach(header => {
        header.addEventListener("click", function() {
          this.classList.toggle("active");
        });
      });

      // Show batch results
      $("batch-results-container").classList.add("show");
      $("sidebar-results").classList.remove("show");
      $("single-results").classList.remove("show");
    }

    // ===== APP INITIALIZATION =====
    function initApp() {
      $("dark-mode-toggle").addEventListener("click", () => document.body.classList.toggle("dark-mode"));
      $("analyze-btn").addEventListener("click", runAnalysis);

      // Mode toggle
      $("single-mode-btn").addEventListener("click", () => switchMode("single"));
      $("batch-mode-btn").addEventListener("click", () => switchMode("batch"));

      // Batch file upload
      const dropZone = $("file-drop-zone");
      dropZone.addEventListener("click", () => $("batch-file-input").click());

      dropZone.addEventListener("dragover", (e) => {
        e.preventDefault();
        dropZone.classList.add("drag-over");
      });

      dropZone.addEventListener("dragleave", () => {
        dropZone.classList.remove("drag-over");
      });

      dropZone.addEventListener("drop", (e) => {
        e.preventDefault();
        dropZone.classList.remove("drag-over");
        handleFileSelection(e.dataTransfer.files);
      });

      $("batch-file-input").addEventListener("change", (e) => {
        handleFileSelection(e.target.files);
      });

      $("batch-analyze-btn").addEventListener("click", startBatchAnalysis);
    }

    initApp();
  </script>
</body>
</html>
sempeak-icerik-kontrol-araci.html
sempeak-icerik-kontrol-araci.html görüntüleniyor. 
