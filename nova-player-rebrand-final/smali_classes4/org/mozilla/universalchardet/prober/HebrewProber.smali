.class public Lorg/mozilla/universalchardet/prober/HebrewProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "HebrewProber.java"


# instance fields
.field private beforePrev:B

.field private finalCharLogicalScore:I

.field private finalCharVisualScore:I

.field private logicalProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private prev:B

.field private visualProber:Lorg/mozilla/universalchardet/prober/CharsetProber;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->logicalProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 84
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->visualProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 85
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/HebrewProber;->reset()V

    return-void
.end method

.method protected static isFinal(B)Z
    .locals 1

    .line 0
    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0xea

    if-eq p0, v0, :cond_1

    const/16 v0, 0xed

    if-eq p0, v0, :cond_1

    const/16 v0, 0xef

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf3

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method protected static isNonFinal(B)Z
    .locals 1

    .line 0
    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0xeb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xee

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf0

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .locals 3

    .line 98
    iget v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharLogicalScore:I

    iget v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 100
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1255:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v1, -0x5

    if-gt v0, v1, :cond_1

    .line 103
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_8859_8:Ljava/lang/String;

    return-object v0

    .line 107
    :cond_1
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->logicalProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    move-result v1

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->visualProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    move-result v2

    sub-float/2addr v1, v2

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    .line 109
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1255:Ljava/lang/String;

    return-object v0

    :cond_2
    const v2, -0x43dc28f6    # -0.01f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 112
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_8859_8:Ljava/lang/String;

    return-object v0

    :cond_3
    if-gez v0, :cond_4

    .line 117
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_8859_8:Ljava/lang/String;

    return-object v0

    .line 121
    :cond_4
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1255:Ljava/lang/String;

    return-object v0
.end method

.method public getConfidence()F
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 2

    .line 134
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->logicalProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v0

    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->visualProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 135
    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v0

    if-ne v0, v1, :cond_0

    return-object v1

    .line 139
    :cond_0
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 3

    .line 145
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/HebrewProber;->getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v0

    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_0

    return-object v1

    :cond_0
    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_4

    .line 152
    aget-byte v0, p1, p2

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    .line 154
    iget-byte v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->beforePrev:B

    if-eq v2, v1, :cond_3

    .line 155
    iget-byte v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    invoke-static {v1}, Lorg/mozilla/universalchardet/prober/HebrewProber;->isFinal(B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    iget v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharLogicalScore:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharLogicalScore:I

    goto :goto_1

    .line 157
    :cond_1
    iget-byte v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    invoke-static {v1}, Lorg/mozilla/universalchardet/prober/HebrewProber;->isNonFinal(B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    iget v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    goto :goto_1

    .line 162
    :cond_2
    iget-byte v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->beforePrev:B

    if-ne v2, v1, :cond_3

    iget-byte v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    .line 163
    invoke-static {v2}, Lorg/mozilla/universalchardet/prober/HebrewProber;->isFinal(B)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eq v0, v1, :cond_3

    .line 165
    iget v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    .line 168
    :cond_3
    :goto_1
    iget-byte v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    iput-byte v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->beforePrev:B

    .line 169
    iput-byte v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 172
    :cond_4
    sget-object p1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 178
    iput v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharLogicalScore:I

    .line 179
    iput v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    const/16 v0, 0x20

    .line 183
    iput-byte v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    .line 184
    iput-byte v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->beforePrev:B

    return-void
.end method

.method public setModalProbers(Lorg/mozilla/universalchardet/prober/CharsetProber;Lorg/mozilla/universalchardet/prober/CharsetProber;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->logicalProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 91
    iput-object p2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->visualProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    return-void
.end method
