# kab -- Georgian Bible on the Command Line

A command line tool for reading the Bible in Old Georgian (ძველი ქართული).
Translation sourced from [orthodoxy.ge](https://www.orthodoxy.ge).

Format and implementation based on [lukesmithxyz/grb](https://github.com/lukesmithxyz/grb) `grb` (Greek Bible).

## Usage

    usage: ./kab [flags] [reference...]

      -l      list books
      -W      no line wrap
      -h      show help

      Reference types:
          <Book>
              Individual book
          <Book>:<Chapter>
              Individual chapter of a book
          <Book>:<Chapter>:<Verse>[,<Verse>]...
              Individual verse(s) of a specific chapter of a book
          <Book>:<Chapter>-<Chapter>
              Range of chapters in a book
          <Book>:<Chapter>:<Verse>-<Verse>
              Range of verses in a book chapter
          <Book>:<Chapter>:<Verse>-<Chapter>:<Verse>
              Range of chapters and verses in a book

          /<Search>
              All verses that match a pattern
          <Book>/<Search>
              All verses in a book that match a pattern
          <Book>:<Chapter>/<Search>
              All verses in a chapter of a book that match a pattern

## Examples

    ./kab Genesis:1:1
    ./kab "Song of Solomon:1:1-5"
    ./kab "The Acts:1:1"
    ./kab "/ადამ"          # Search for Georgian text
    ./kab "Genesis /დაბადება"  # Search in Genesis

## Data Format

The `ka_biblia.tsv` file contains 7 tab-separated columns:

| Column | Description |
|--------|-------------|
| `BookName` | Book name in English |
| `BookNameGeo` | Book name in Georgian (ქართული) |
| `BookCode` | Short book code |
| `Part` | Testament (1=Old, 2=New) |
| `Chapter` | Chapter number |
| `Verse` | Verse number |
| `Text` | Verse text in Old Georgian |

## Books and Contents

Total: **72 books** (45 Old Testament + 27 New Testament)

### Old Testament (45 books)

| English | Georgian (ქართული) | Code |
|---------|-------------------|------|
| Genesis | დაბადება | Ge |
| Exodus | გამოსვლა | Ex |
| Leviticus | ლევიანნი | Le |
| Numbers | რიცხვნი | Nu |
| Deuteronomy | მეორე რჯული | Dt |
| Joshua | იესო ნავეს ძე | Jos |
| Judges | მსაჯულნი | Jdg |
| Ruth | რუთი | Ru |
| 1 Kings | პირველი მეფეთა | 1Ki |
| 2 Kings | მეორე მეფეთა | 2Ki |
| 3 Kings | მესამე მეფეთა | 3Ki |
| 4 Kings | მეოთხე მეფეთა | 4Ki |
| 1 Chronicles | პირველი ნეშტთა | 1Ch |
| 2 Chronicles | მეორე ნეშტთა | 2Ch |
| 1 Ezra | პირველი ეზრა | 1Ezr |
| Nehemiah | ნეემია | Ne |
| 2 Ezra* | მეორე ეზრა* | 2Ezr |
| Tobit* | ტობითი* | Tob |
| Judith* | ივდითი* | Jdt |
| Esther | ესთერი | Est |
| Job | იობი | Job |
| Psalms | ფსალმუნნი | Ps |
| Proverbs | იგავნი სოლომონისა | Pr |
| Ecclesiastes | ეკლესიასტე | Ec |
| Song of Solomon | ქებათა-ქება სოლომონისა | Song |
| Wisdom of Solomon* | სიბრძნე სოლომონისა* | Wis |
| Sirach* | სიბრძნე ზირაქისა* | Sir |
| Isaiah | ესაია წინასწარმეტყველი | Is |
| Jeremiah | იერემია წინასწარმეტყველი | Je |
| Lamentations | გოდება იერემიასი | La |
| Letter of Jeremiah* | ეპისტოლე იერემიასი* | EpJer |
| Baruch* | ბარუქ წინასწარმეტყველი* | Ba |
| Ezekiel | ეზეკიელ წინასწარმეტყველი | Eze |
| Daniel | დანიელ წინასწარმეტყველი | Da |
| Hosea | ოსია წინასწარმეტყველი | Ho |
| Amos | ამოს წინასწარმეტყველი | Am |
| Obadiah | აბდია წინასწარმეტყველი | Ob |
| Jonah | იონა წინასწარმეტყველი | Jon |
| Micah | მიქა წინასწარმეტყველი | Mic |
| Nahum | ნაუმ წინასწარმეტყველი | Na |
| Habakkuk | აბაკუმ წინასწარმეტყველი | Hab |
| Zephaniah | სოფონია წინასწარმეტყველი | Zep |
| Haggai | ანგია წინასწარმეტყველი | Hag |
| Zechariah | ზაქარია წინასწარმეტყველი | Zec |
| Malachi | მალაქია წინასწარმეტყველი | Mal |

\* Deuterocanonical books

### New Testament (27 books)

| English | Georgian (ქართული) | Code |
|---------|-------------------|------|
| Matthew | მათეს სახარება | Mt |
| Mark | მარკოზის სახარება | Mk |
| Luke | ლუკას სახარება | Lk |
| John | იოანეს სახარება | Jn |
| The Acts | მოციქულთა საქმენი | Ac |
| Romans | რომაელთა მიმართ | Ro |
| 1 Corinthians | პირველი კორინთელთა მიმართ | 1Co |
| 2 Corinthians | მეორე კორინთელთა მიმართ | 2Co |
| Galatians | გალატელთა მიმართ | Ga |
| Ephesians | ეფესელთა მიმართ | Eph |
| Philippians | ფილიპელთა მიმართ | Php |
| Colossians | კოლასელთა მიმართ | Col |
| 1 Thessalonians | პირველი თესალონიკელთა მიმართ | 1Th |
| 2 Thessalonians | მეორე თესალონიკელთა მიმართ | 2Th |
| 1 Timothy | პირველი ტიმოთეს მიმართ | 1Ti |
| 2 Timothy | მეორე ტიმოთეს მიმართ | 2Ti |
| Titus | ტიტეს მიმართ | Ti |
| Hebrews | ებრაელთა მიმართ | He |
| James | იაკობის ეპისტოლე | Jas |
| 1 Peter | პირველი პეტრესი | 1Pe |
| 2 Peter | მეორე პეტრესი | 2Pe |
| 1 John | პირველი იოანესი | 1Jn |
| 2 John | მეორე იოანესი | 2Jn |
| 3 John | მესამე იოანესი | 3Jn |
| Jude | იუდასი | Jud |
| Revelation | იოანეს გამოცხადება | Re |

## Notes
- **Translation**: Old Georgian (ძველი ქართული) from [orthodoxy.ge](https://www.orthodoxy.ge/tserili/biblia_sruli/sarchevi.php)
- **Book numbering**: In the Georgian Orthodox tradition, what are called 1/2 Samuel in English Bibles are numbered as 3/4 Kings. The books labeled 1/2 Kings in English are combined with Samuel in the Georgian numbering system.
- **Skipping books**:
  - Joel (იოველ წინასწარმეტყველი)
  - 1-4 Maccabees (პირველი-მეოთხე მაკაბელთა)
  - Philemon (ფილიმონ)
  - 3 Ezra (მესამე ეზრა)
- **Book names**: English book names follow the format used in `grb`.
- Books can be referenced by either English or Georgian names in searches.

## Install

Install `kab` by running:

```bash
git clone https://github.com/dontlosecontrol/kab.git
cd kab
sudo make install
```

This will install the `kab` command to `/usr/local/bin`.

## Arch User Repository

`kab` is available in the Arch User Repository as `kab-git`.

https://aur.archlinux.org/packages/kab-git/

Install with an AUR helper like `yay` or `paru`:

```bash
yay -S kab-git
# or
paru -S kab-git
```

Or manually:

```bash
git clone https://aur.archlinux.org/kab-git.git
cd kab-git
makepkg -si
```

## License and Attribution

- **Script**: Public domain
- **Text source**: [orthodoxy.ge - ბიბლია](https://www.orthodoxy.ge/tserili/biblia_sruli/sarchevi.php)
- **Format based on**:
  - [lukesmithxyz/grb](https://github.com/lukesmithxyz/grb) (Greek Bible)

Please refer to [orthodoxy.ge](https://www.orthodoxy.ge) for the original text and usage terms.
