.class public final Lcom/facebook/ads/redexgen/X/KA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/aq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ji;->A0m(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ji;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 865
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Lf"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "nmAxyBcQYqE4UmHMsUF1rAa8zTrMAPgx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "yXHjwHYuNIdrzaXYLvaZZ8rDuk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "9P19JGz6dEYaA5InwGx6w36V1Sjc1fgT"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Uaeemoya7byMjdbMYqkdDOMCW0kva5u1"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "a9sExJmhm07IJOfFlJQHVREgKDfvTtqT"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zS9IM7X0AIqJ7SZD2m"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "JScTq5ptQGF6W5ukeGazDvn9iL3"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/KA;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/KA;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ji;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 45186
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KA;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/KA;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xf

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KA;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x1dt
        -0x1ft
        -0x2dt
        -0x20t
        -0x33t
        -0x24t
        -0x31t
        -0x1ct
        -0x29t
        -0x2bt
        -0x31t
        -0x1et
        -0x29t
        -0x23t
        -0x24t
        -0x33t
        -0x29t
        -0x31t
        -0x30t
    .end array-data
.end method


# virtual methods
.method public final AF7(Ljava/lang/String;)V
    .locals 2

    .line 45187
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KA;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ji;->A14(Lcom/facebook/ads/redexgen/X/Ji;Z)Z

    .line 45188
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KA;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0D(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45189
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KA;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0D(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v1

    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ah;->setProgress(I)V

    .line 45190
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KA;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0D(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v1

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0O(Landroid/view/View;I)V

    .line 45191
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KA;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0A(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KA;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0E(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/M3;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45192
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KA;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0A(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A14()Ljava/lang/String;

    move-result-object v1

    .line 45193
    .local v0, "webInstallJS":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45194
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KA;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0E(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/M3;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/M3;->loadUrl(Ljava/lang/String;)V

    .line 45195
    .end local v0    # "webInstallJS":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public final AF9(Ljava/lang/String;)V
    .locals 5

    .line 45196
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KA;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Ji;->A14(Lcom/facebook/ads/redexgen/X/Ji;Z)Z

    .line 45197
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KA;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0D(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0O(Landroid/view/View;I)V

    .line 45198
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KA;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0C(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/M8;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45199
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KA;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0C(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/M8;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/M8;->setUrl(Ljava/lang/String;)V

    .line 45200
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/KA;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    sget-object v2, Lcom/facebook/ads/redexgen/X/KA;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/KA;->A02:[Ljava/lang/String;

    const-string v1, "wX256yuF2"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Ji;->A11(Lcom/facebook/ads/redexgen/X/Ji;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KA;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A01(Lcom/facebook/ads/redexgen/X/Ji;)I

    move-result v0

    if-le v0, v3, :cond_1

    .line 45201
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KA;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Ji;->A15(Lcom/facebook/ads/redexgen/X/Ji;Z)Z

    .line 45202
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/KA;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KA;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0i(Lcom/facebook/ads/redexgen/X/Ji;Ljava/lang/String;)V

    .line 45203
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KA;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A02(Lcom/facebook/ads/redexgen/X/Ji;)I

    sget-object v1, Lcom/facebook/ads/redexgen/X/KA;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1b

    if-eq v1, v0, :cond_2

    .line 45204
    sget-object v2, Lcom/facebook/ads/redexgen/X/KA;->A02:[Ljava/lang/String;

    const-string v1, "lsrcQj4qqEXeVsDQCf"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AFY(I)V
    .locals 1

    .line 45205
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KA;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A10(Lcom/facebook/ads/redexgen/X/Ji;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KA;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0D(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45206
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KA;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0D(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ah;->setProgress(I)V

    .line 45207
    :cond_0
    return-void
.end method

.method public final AFb(Ljava/lang/String;)V
    .locals 1

    .line 45208
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KA;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0C(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/M8;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45209
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KA;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0C(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/M8;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/M8;->setTitle(Ljava/lang/String;)V

    .line 45210
    :cond_0
    return-void
.end method

.method public final AFe()V
    .locals 2

    .line 45211
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KA;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0J(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/c7;

    move-result-object v0

    .line 45212
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0C()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v1

    .line 45213
    const/16 v0, 0xe

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->ADJ(I)V

    .line 45214
    return-void
.end method
