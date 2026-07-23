.class public final Lcom/facebook/ads/redexgen/X/Jo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1W;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cea708CueInfo"
.end annotation


# static fields
.field public static final A02:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/facebook/ads/redexgen/X/Jo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/pT;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 839
    new-instance v0, Lcom/facebook/ads/redexgen/X/Jn;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Jn;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jo;->A02:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V
    .locals 1

    .line 44157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44158
    new-instance v0, Lcom/facebook/ads/redexgen/X/3o;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3o;-><init>()V

    .line 44159
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3o;->A0G(Ljava/lang/CharSequence;)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v0

    .line 44160
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/3o;->A0F(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v0

    .line 44161
    invoke-virtual {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/3o;->A07(FI)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v0

    .line 44162
    invoke-virtual {v0, p5}, Lcom/facebook/ads/redexgen/X/3o;->A09(I)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v0

    .line 44163
    invoke-virtual {v0, p6}, Lcom/facebook/ads/redexgen/X/3o;->A04(F)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v0

    .line 44164
    invoke-virtual {v0, p7}, Lcom/facebook/ads/redexgen/X/3o;->A0A(I)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v0

    .line 44165
    invoke-virtual {v0, p8}, Lcom/facebook/ads/redexgen/X/3o;->A06(F)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v0

    .line 44166
    .local v0, "cueBuilder":Lcom/facebook/ads/redexgen/X/3o;
    if-eqz p9, :cond_0

    .line 44167
    invoke-virtual {v0, p10}, Lcom/facebook/ads/redexgen/X/3o;->A0C(I)Lcom/facebook/ads/redexgen/X/3o;

    .line 44168
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3o;->A0H()Lcom/facebook/ads/redexgen/X/pT;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jo;->A01:Lcom/facebook/ads/redexgen/X/pT;

    .line 44169
    iput p11, p0, Lcom/facebook/ads/redexgen/X/Jo;->A00:I

    .line 44170
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Jo;Lcom/facebook/ads/redexgen/X/Jo;)I
    .locals 0

    .line 44171
    iget p1, p1, Lcom/facebook/ads/redexgen/X/Jo;->A00:I

    iget p0, p0, Lcom/facebook/ads/redexgen/X/Jo;->A00:I

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static synthetic A01()Ljava/util/Comparator;
    .locals 1

    .line 44172
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jo;->A02:Ljava/util/Comparator;

    return-object v0
.end method
