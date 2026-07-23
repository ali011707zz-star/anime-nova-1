.class public abstract Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;
.super Ljava/lang/Object;
.source "SequenceModel.java"


# instance fields
.field protected charToOrderMap:[S

.field protected charsetName:Ljava/lang/String;

.field protected keepEnglishLetter:Z

.field protected precedenceMatrix:[B

.field protected typicalPositiveRatio:F


# direct methods
.method public constructor <init>([S[BFZLjava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, [S->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [S

    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->charToOrderMap:[S

    .line 64
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->precedenceMatrix:[B

    .line 65
    iput p3, p0, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->typicalPositiveRatio:F

    .line 66
    iput-boolean p4, p0, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->keepEnglishLetter:Z

    .line 67
    iput-object p5, p0, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->charsetName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCharsetName()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->charsetName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder(B)S
    .locals 1

    and-int/lit16 p1, p1, 0xff

    .line 73
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->charToOrderMap:[S

    aget-short p1, v0, p1

    return p1
.end method

.method public getPrecedence(I)B
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->precedenceMatrix:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public getTypicalPositiveRatio()F
    .locals 1

    .line 83
    iget v0, p0, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->typicalPositiveRatio:F

    return v0
.end method
