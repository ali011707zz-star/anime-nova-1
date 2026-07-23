.class public final Lcom/facebook/ads/redexgen/X/kp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/google/common/base/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/ko;,
        Lcom/google/common/base/Splitter$MapSplitter;,
        Lcom/facebook/ads/redexgen/X/Bw;
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/CC;

.field public final A02:Lcom/facebook/ads/redexgen/X/ko;

.field public final A03:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ko;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy"
        }
    .end annotation

    .line 91578
    invoke-static {}, Lcom/facebook/ads/redexgen/X/CC;->A03()Lcom/facebook/ads/redexgen/X/CC;

    move-result-object v2

    const v1, 0x7fffffff

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/kp;-><init>(Lcom/facebook/ads/redexgen/X/ko;ZLcom/facebook/ads/redexgen/X/CC;I)V

    .line 91579
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ko;ZLcom/facebook/ads/redexgen/X/CC;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "strategy",
            "omitEmptyStrings",
            "trimmer",
            "limit"
        }
    .end annotation

    .line 91580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91581
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/kp;->A02:Lcom/facebook/ads/redexgen/X/ko;

    .line 91582
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/kp;->A03:Z

    .line 91583
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/kp;->A01:Lcom/facebook/ads/redexgen/X/CC;

    .line 91584
    iput p4, p0, Lcom/facebook/ads/redexgen/X/kp;->A00:I

    .line 91585
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/kp;)I
    .locals 0

    .line 91586
    iget p0, p0, Lcom/facebook/ads/redexgen/X/kp;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/kp;)Lcom/facebook/ads/redexgen/X/CC;
    .locals 0

    .line 91587
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/kp;->A01:Lcom/facebook/ads/redexgen/X/CC;

    return-object p0
.end method

.method public static A02(C)Lcom/facebook/ads/redexgen/X/kp;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "separator"
        }
    .end annotation

    .line 91588
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/CC;->A02(C)Lcom/facebook/ads/redexgen/X/1C;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/kp;->A03(Lcom/facebook/ads/redexgen/X/CC;)Lcom/facebook/ads/redexgen/X/kp;

    move-result-object p0

    return-object p0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/CC;)Lcom/facebook/ads/redexgen/X/kp;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "separatorMatcher"
        }
    .end annotation

    .line 91589
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91590
    new-instance v1, Lcom/facebook/ads/redexgen/X/C3;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/C3;-><init>(Lcom/facebook/ads/redexgen/X/CC;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/kp;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/kp;-><init>(Lcom/facebook/ads/redexgen/X/ko;)V

    return-object v0
.end method

.method private A04(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kp;->A02:Lcom/facebook/ads/redexgen/X/ko;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/ko;->AAl(Lcom/facebook/ads/redexgen/X/kp;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/kp;)Z
    .locals 0

    .line 91592
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/kp;->A03:Z

    return p0
.end method


# virtual methods
.method public final A06(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91593
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91594
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kp;->A04(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v2

    .line 91595
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91596
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91597
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91598
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
