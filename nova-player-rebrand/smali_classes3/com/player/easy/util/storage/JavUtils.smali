.class public Lcom/player/easy/util/storage/JavUtils;
.super Ljava/lang/Object;
.source "JavUtils.java"


# static fields
.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field public static final DEFAULT_DOWNLOAD_FILENAME:Ljava/lang/String; = "downloadfile"

.field private static final ENCODED_FILE_NAME_GROUP:I = 0x5

.field private static final ENCODED_SYMBOL_PATTERN:Ljava/util/regex/Pattern;

.field private static final ENCODING_GROUP:I = 0x4

.field private static final EXTENSION_SEPARATOR:Ljava/lang/String; = "."

.field private static final QUOTED_FILE_NAME_GROUP:I = 0x3

.field private static final UNQUOTED_FILE_NAME:I = 0x2

.field private static final supportedFilenameEncodings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    const-string v0, "(inline|attachment)\\s*;\\s*filename\\s*=\\s*(\"((?:\\\\.|[^\"\\\\])*)\"|[^;]*)\\s*(?:;\\s*filename\\*\\s*=\\s*(utf-8|iso-8859-1|windows-1251)\'[^\']*\'(\\S*))?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/player/easy/util/storage/JavUtils;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    .line 30
    const-string v0, "utf-8"

    const-string v2, "windows-1251"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/player/easy/util/storage/JavUtils;->supportedFilenameEncodings:[Ljava/lang/String;

    .line 45
    const-string v0, "%[0-9a-f]{2}|[0-9a-z!#$&+-.^_`|~]"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/player/easy/util/storage/JavUtils;->ENCODED_SYMBOL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static autoDecodePercentEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 220
    new-instance v0, Lorg/mozilla/universalchardet/UniversalDetector;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/UniversalDetector;-><init>()V

    .line 221
    invoke-static {p0}, Lcom/player/easy/util/storage/JavUtils;->percentEncodingBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 223
    invoke-virtual {v0, p0}, Lorg/mozilla/universalchardet/UniversalDetector;->handleData([B)V

    .line 224
    invoke-virtual {v0}, Lorg/mozilla/universalchardet/UniversalDetector;->dataEnd()V

    .line 225
    invoke-virtual {v0}, Lorg/mozilla/universalchardet/UniversalDetector;->getDetectedCharset()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-virtual {v0}, Lorg/mozilla/universalchardet/UniversalDetector;->reset()V

    const/4 v0, 0x0

    if-nez v1, :cond_0

    return-object v0

    .line 231
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    array-length v3, p0

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    return-object v0
.end method

.method private static decodePercentEncoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 197
    invoke-static {p0}, Lcom/player/easy/util/storage/JavUtils;->percentEncodingBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 198
    new-instance v0, Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public static getHttpFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v0, 0x2f

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 59
    invoke-static {p1}, Lcom/player/easy/util/storage/JavUtils;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_1

    .line 63
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :cond_1
    :goto_0
    const-string v2, "/"

    const/16 v3, 0x3f

    const/4 v4, 0x0

    if-nez p1, :cond_4

    if-eqz p2, :cond_4

    .line 69
    invoke-static {p2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 71
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_2

    .line 74
    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 76
    :cond_2
    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 77
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    if-lez p1, :cond_3

    .line 79
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, p2

    :cond_4
    :goto_1
    if-nez p1, :cond_7

    .line 88
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-lez p2, :cond_5

    .line 91
    invoke-virtual {p0, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 93
    :cond_5
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 94
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    if-lez p2, :cond_7

    .line 96
    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-static {p1}, Lcom/player/easy/util/storage/JavUtils;->autoDecodePercentEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    move-object p1, p0

    :cond_7
    :goto_2
    if-nez p1, :cond_8

    .line 107
    const-string p1, "downloadfile"

    :cond_8
    const/16 p0, 0x2e

    .line 113
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const-string v0, "."

    if-gez p2, :cond_c

    if-eqz p3, :cond_9

    .line 116
    invoke-static {p3}, Lcom/player/easy/util/storage/MimeTypeUtils;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 118
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9
    if-nez v1, :cond_f

    if-eqz p3, :cond_b

    .line 121
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p3, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "text/"

    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 122
    const-string p0, "text/html"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 123
    const-string v1, ".html"

    goto :goto_3

    .line 125
    :cond_a
    const-string v1, ".txt"

    goto :goto_3

    .line 127
    :cond_b
    const-string v1, ".bin"

    goto :goto_3

    :cond_c
    if-eqz p3, :cond_d

    .line 136
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    .line 137
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/player/easy/util/storage/MimeTypeUtils;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 138
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_d

    .line 139
    invoke-static {p3}, Lcom/player/easy/util/storage/MimeTypeUtils;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 141
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_d
    if-nez v1, :cond_e

    .line 145
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    move-object v1, p0

    .line 147
    :cond_e
    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 149
    :cond_f
    :goto_3
    const-string p0, "%20"

    const-string p2, " "

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/player/easy/util/storage/DiskUtilKt;->buildValidFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 169
    :try_start_0
    sget-object v0, Lcom/player/easy/util/storage/JavUtils;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 170
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    .line 172
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 173
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 176
    invoke-static {v0, v1}, Lcom/player/easy/util/storage/JavUtils;->decodePercentEncoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x3

    .line 180
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 183
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 184
    :cond_1
    const-string p0, "\\\\(.)"

    const-string v1, "$1"

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static percentEncodingBytes(Ljava/lang/String;)[B
    .locals 3

    .line 203
    sget-object v0, Lcom/player/easy/util/storage/JavUtils;->ENCODED_SYMBOL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 204
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 206
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 208
    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
