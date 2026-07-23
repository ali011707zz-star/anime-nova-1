.class public final Lcom/facebook/ads/redexgen/X/jH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Nt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Nu;->A0A(Lcom/facebook/ads/redexgen/X/gi;Ljava/util/EnumSet;Lcom/facebook/ads/redexgen/X/jT;Lcom/facebook/ads/redexgen/X/jd;ILcom/facebook/ads/redexgen/X/Nt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A07:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/jd;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/jT;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/Nt;

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/Nu;

.field public final synthetic A05:Lcom/facebook/ads/redexgen/X/gi;

.field public final synthetic A06:Ljava/util/EnumSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2978
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "LaTcnwnUfzgLTffZJQ1IPucRbglpEgMo"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "12hOZJfgSqwHBnuTqXHxpHxEQ0NbZO7A"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Dr9pHE3G5odEHWCsCqxBSNpdFpwa86Mh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "MDWd5GjifHIGoqp8wS2KmhLcZ8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Ozio236b3SA3ZtX"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "C3UkekSSOdUqAnfYGByVev7l4a4YpLBv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Q070rE4WAmrDPncHn0R1JG2tySYrh7TO"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/jH;->A07:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nu;Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/jT;ILcom/facebook/ads/redexgen/X/Nt;Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88219
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jH;->A04:Lcom/facebook/ads/redexgen/X/Nu;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/jH;->A05:Lcom/facebook/ads/redexgen/X/gi;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/jH;->A01:Lcom/facebook/ads/redexgen/X/jd;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/jH;->A02:Lcom/facebook/ads/redexgen/X/jT;

    iput p5, p0, Lcom/facebook/ads/redexgen/X/jH;->A00:I

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/jH;->A03:Lcom/facebook/ads/redexgen/X/Nt;

    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/jH;->A06:Ljava/util/EnumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00()V
    .locals 9

    .line 88220
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jH;->A00:I

    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jH;->A02:Lcom/facebook/ads/redexgen/X/jT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A23()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 88221
    return-void

    .line 88222
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/jH;->A04:Lcom/facebook/ads/redexgen/X/Nu;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/jH;->A05:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/jH;->A06:Ljava/util/EnumSet;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/jH;->A02:Lcom/facebook/ads/redexgen/X/jT;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jH;->A02:Lcom/facebook/ads/redexgen/X/jT;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/jH;->A00:I

    add-int/lit8 v0, v0, 0x1

    .line 88223
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/jT;->A27(I)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v6

    iget v0, p0, Lcom/facebook/ads/redexgen/X/jH;->A00:I

    add-int/lit8 v7, v0, 0x1

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/jH;->A03:Lcom/facebook/ads/redexgen/X/Nt;

    .line 88224
    invoke-static/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Nu;->A07(Lcom/facebook/ads/redexgen/X/Nu;Lcom/facebook/ads/redexgen/X/gi;Ljava/util/EnumSet;Lcom/facebook/ads/redexgen/X/jT;Lcom/facebook/ads/redexgen/X/jd;ILcom/facebook/ads/redexgen/X/Nt;)V

    .line 88225
    return-void
.end method


# virtual methods
.method public final ACo(Lcom/facebook/ads/AdError;)V
    .locals 1

    .line 88226
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jH;->A00:I

    if-nez v0, :cond_0

    .line 88227
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jH;->A03:Lcom/facebook/ads/redexgen/X/Nt;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Nt;->ACo(Lcom/facebook/ads/AdError;)V

    .line 88228
    :cond_0
    return-void
.end method

.method public final ACp()V
    .locals 4

    .line 88229
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jH;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 88230
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A01()Lcom/facebook/ads/redexgen/X/T1;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jH;->A01:Lcom/facebook/ads/redexgen/X/jd;

    .line 88231
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jH;->A02:Lcom/facebook/ads/redexgen/X/jT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A28()Ljava/lang/String;

    move-result-object v0

    .line 88232
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T1;->AJE(Ljava/lang/String;Ljava/lang/String;)V

    .line 88233
    iget v1, p0, Lcom/facebook/ads/redexgen/X/jH;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jH;->A02:Lcom/facebook/ads/redexgen/X/jT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A25()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 88234
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/jH;->A03:Lcom/facebook/ads/redexgen/X/Nt;

    sget-object v2, Lcom/facebook/ads/redexgen/X/jH;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/jH;->A07:[Ljava/lang/String;

    const-string v1, "Mfrds6r17BKRZSfVfcuH4MZ0YR"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "cdrsota1fCopt7F"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Nt;->ACp()V

    .line 88235
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/jH;->A00()V

    .line 88236
    return-void
.end method

.method public final AHY()V
    .locals 1

    .line 88237
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jH;->A00:I

    if-nez v0, :cond_0

    .line 88238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jH;->A03:Lcom/facebook/ads/redexgen/X/Nt;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Nt;->AHY()V

    .line 88239
    :cond_0
    return-void
.end method

.method public final AKX()V
    .locals 1

    .line 88240
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jH;->A00:I

    if-nez v0, :cond_0

    .line 88241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jH;->A03:Lcom/facebook/ads/redexgen/X/Nt;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Nt;->AKX()V

    .line 88242
    :cond_0
    return-void
.end method
