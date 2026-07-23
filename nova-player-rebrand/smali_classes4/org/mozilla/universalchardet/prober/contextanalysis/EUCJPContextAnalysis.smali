.class public Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;
.super Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis;
.source "EUCJPContextAnalysis.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis;-><init>()V

    return-void
.end method


# virtual methods
.method protected getOrder([BI)I
    .locals 2

    .line 90
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xa4

    if-ne v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 92
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0xa1

    if-lt p1, p2, :cond_0

    const/16 v0, 0xf3

    if-gt p1, v0, :cond_0

    sub-int/2addr p1, p2

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
