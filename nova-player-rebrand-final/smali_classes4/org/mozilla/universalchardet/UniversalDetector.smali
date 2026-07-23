.class public Lorg/mozilla/universalchardet/UniversalDetector;
.super Ljava/lang/Object;
.source "UniversalDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/universalchardet/UniversalDetector$InputState;
    }
.end annotation


# instance fields
.field private detectedCharset:Ljava/lang/String;

.field private done:Z

.field private escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private gotData:Z

.field private inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

.field private lastChar:B

.field private probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private start:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, v0}, Lorg/mozilla/universalchardet/UniversalDetector;-><init>(Lorg/mozilla/universalchardet/CharsetListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/universalchardet/CharsetListener;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 p1, 0x3

    .line 107
    new-array p1, p1, [Lorg/mozilla/universalchardet/prober/CharsetProber;

    iput-object p1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 109
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/UniversalDetector;->reset()V

    return-void
.end method


# virtual methods
.method public dataEnd()V
    .locals 5

    .line 258
    iget-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->gotData:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 262
    :cond_0
    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 263
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v1, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    .line 275
    :goto_0
    iget-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 276
    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    move-result v3

    cmpl-float v4, v3, v2

    if-lez v4, :cond_2

    move v1, v0

    move v2, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const v0, 0x3e4ccccd    # 0.2f

    cmpl-float v0, v2, v0

    if-lez v0, :cond_4

    .line 284
    aget-object v0, v3, v1

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    :cond_4
    :goto_1
    return-void
.end method

.method public getDetectedCharset()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    return-object v0
.end method

.method public handleData([B)V
    .locals 2

    const/4 v0, 0x0

    .line 136
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/mozilla/universalchardet/UniversalDetector;->handleData([BII)V

    return-void
.end method

.method public handleData([BII)V
    .locals 9

    .line 146
    iget-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x1

    if-lez p3, :cond_1

    .line 151
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->gotData:Z

    .line 154
    :cond_1
    iget-boolean v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->start:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 155
    iput-boolean v2, p0, Lorg/mozilla/universalchardet/UniversalDetector;->start:Z

    const/4 v1, 0x3

    if-le p3, v1, :cond_a

    .line 157
    aget-byte v1, p1, p2

    const/16 v3, 0xff

    and-int/2addr v1, v3

    add-int/lit8 v4, p2, 0x1

    .line 158
    aget-byte v4, p1, v4

    and-int/2addr v4, v3

    add-int/lit8 v5, p2, 0x2

    .line 159
    aget-byte v5, p1, v5

    and-int/2addr v5, v3

    add-int/lit8 v6, p2, 0x3

    .line 160
    aget-byte v6, p1, v6

    and-int/2addr v6, v3

    const/16 v7, 0xfe

    if-eqz v1, :cond_7

    const/16 v8, 0xef

    if-eq v1, v8, :cond_6

    if-eq v1, v7, :cond_4

    if-eq v1, v3, :cond_2

    goto :goto_0

    :cond_2
    if-ne v4, v7, :cond_3

    if-nez v5, :cond_3

    if-nez v6, :cond_3

    .line 184
    sget-object v1, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_32LE:Ljava/lang/String;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-ne v4, v7, :cond_9

    .line 186
    sget-object v1, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_16LE:Ljava/lang/String;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto :goto_0

    :cond_4
    if-ne v4, v3, :cond_5

    if-nez v5, :cond_5

    if-nez v6, :cond_5

    .line 170
    sget-object v1, Lorg/mozilla/universalchardet/Constants;->CHARSET_X_ISO_10646_UCS_4_3412:Ljava/lang/String;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto :goto_0

    :cond_5
    if-ne v4, v3, :cond_9

    .line 172
    sget-object v1, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_16BE:Ljava/lang/String;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const/16 v1, 0xbb

    if-ne v4, v1, :cond_9

    const/16 v1, 0xbf

    if-ne v5, v1, :cond_9

    .line 165
    sget-object v1, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_8:Ljava/lang/String;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto :goto_0

    :cond_7
    if-nez v4, :cond_8

    if-ne v5, v7, :cond_8

    if-ne v6, v3, :cond_8

    .line 177
    sget-object v1, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_32BE:Ljava/lang/String;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto :goto_0

    :cond_8
    if-nez v4, :cond_9

    if-ne v5, v3, :cond_9

    if-ne v6, v7, :cond_9

    .line 179
    sget-object v1, Lorg/mozilla/universalchardet/Constants;->CHARSET_X_ISO_10646_UCS_4_2143:Ljava/lang/String;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    .line 193
    :cond_9
    :goto_0
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 194
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    return-void

    :cond_a
    add-int v1, p2, p3

    move v3, p2

    :goto_1
    if-ge v3, v1, :cond_12

    .line 202
    aget-byte v4, p1, v3

    and-int/lit16 v5, v4, 0xff

    and-int/lit16 v6, v4, 0x80

    if-eqz v6, :cond_e

    const/16 v6, 0xa0

    if-eq v5, v6, :cond_e

    .line 204
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v5, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-eq v4, v5, :cond_11

    .line 205
    iput-object v5, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    .line 207
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    .line 208
    iput-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 211
    :cond_b
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v5, v4, v2

    if-nez v5, :cond_c

    .line 212
    new-instance v5, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;

    invoke-direct {v5}, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;-><init>()V

    aput-object v5, v4, v2

    .line 214
    :cond_c
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v5, v4, v0

    if-nez v5, :cond_d

    .line 215
    new-instance v5, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;

    invoke-direct {v5}, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;-><init>()V

    aput-object v5, v4, v0

    .line 217
    :cond_d
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v5, 0x2

    aget-object v6, v4, v5

    if-nez v6, :cond_11

    .line 218
    new-instance v6, Lorg/mozilla/universalchardet/prober/Latin1Prober;

    invoke-direct {v6}, Lorg/mozilla/universalchardet/prober/Latin1Prober;-><init>()V

    aput-object v6, v4, v5

    goto :goto_2

    .line 222
    :cond_e
    iget-object v6, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v7, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->PURE_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v6, v7, :cond_10

    const/16 v6, 0x1b

    if-eq v5, v6, :cond_f

    const/16 v6, 0x7b

    if-ne v5, v6, :cond_10

    iget-byte v5, p0, Lorg/mozilla/universalchardet/UniversalDetector;->lastChar:B

    const/16 v6, 0x7e

    if-ne v5, v6, :cond_10

    .line 224
    :cond_f
    sget-object v5, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->ESC_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    iput-object v5, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    .line 226
    :cond_10
    iput-byte v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->lastChar:B

    :cond_11
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 231
    :cond_12
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v3, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->ESC_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v1, v3, :cond_14

    .line 232
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-nez v1, :cond_13

    .line 233
    new-instance v1, Lorg/mozilla/universalchardet/prober/EscCharsetProber;

    invoke-direct {v1}, Lorg/mozilla/universalchardet/prober/EscCharsetProber;-><init>()V

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 235
    :cond_13
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v1, p1, p2, p3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object p1

    .line 236
    sget-object p2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne p1, p2, :cond_16

    .line 237
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    .line 238
    iget-object p1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {p1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    return-void

    .line 240
    :cond_14
    sget-object v3, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v1, v3, :cond_16

    .line 241
    :goto_3
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v3, v1

    if-ge v2, v3, :cond_16

    .line 242
    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, p3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v1

    .line 243
    sget-object v3, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v1, v3, :cond_15

    .line 244
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    .line 245
    iget-object p1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    return-void

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_16
    :goto_4
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 301
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    const/4 v1, 0x1

    .line 302
    iput-boolean v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->start:Z

    const/4 v1, 0x0

    .line 303
    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    .line 304
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->gotData:Z

    .line 305
    sget-object v1, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->PURE_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    .line 306
    iput-byte v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->lastChar:B

    .line 308
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->reset()V

    .line 312
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 313
    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 314
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->reset()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
