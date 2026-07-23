.class public Lcom/facebook/ads/redexgen/X/3h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/pc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static A0R:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:I

.field public A0A:I

.field public A0B:I

.field public A0C:I

.field public A0D:I

.field public A0E:I

.field public A0F:I

.field public A0G:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/facebook/ads/redexgen/X/pg;",
            "Lcom/facebook/ads/redexgen/X/pe;",
            ">;"
        }
    .end annotation
.end field

.field public A0H:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public A0I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A0J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A0K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A0L:Ljava/util/List;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "FEATURE_LOGIC"
        }
        value = "D56211926, support language flag in video track"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A0M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A0N:Z

.field public A0O:Z

.field public A0P:Z

.field public A0Q:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3h;->A0P()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10662
    const v2, 0x7fffffff

    iput v2, p0, Lcom/facebook/ads/redexgen/X/3h;->A06:I

    .line 10663
    iput v2, p0, Lcom/facebook/ads/redexgen/X/3h;->A05:I

    .line 10664
    iput v2, p0, Lcom/facebook/ads/redexgen/X/3h;->A04:I

    .line 10665
    iput v2, p0, Lcom/facebook/ads/redexgen/X/3h;->A03:I

    .line 10666
    iput v2, p0, Lcom/facebook/ads/redexgen/X/3h;->A0F:I

    .line 10667
    iput v2, p0, Lcom/facebook/ads/redexgen/X/3h;->A0E:I

    .line 10668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0Q:Z

    .line 10669
    invoke-static {}, Lcom/facebook/ads/redexgen/X/jW;->A01()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0M:Ljava/util/List;

    .line 10670
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/3h;->A0D:I

    .line 10671
    invoke-static {}, Lcom/facebook/ads/redexgen/X/jW;->A01()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0L:Ljava/util/List;

    .line 10672
    invoke-static {}, Lcom/facebook/ads/redexgen/X/jW;->A01()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0I:Ljava/util/List;

    .line 10673
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3h;->A0B:I

    .line 10674
    iput v2, p0, Lcom/facebook/ads/redexgen/X/3h;->A02:I

    .line 10675
    iput v2, p0, Lcom/facebook/ads/redexgen/X/3h;->A01:I

    .line 10676
    invoke-static {}, Lcom/facebook/ads/redexgen/X/jW;->A01()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0J:Ljava/util/List;

    .line 10677
    invoke-static {}, Lcom/facebook/ads/redexgen/X/jW;->A01()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0K:Ljava/util/List;

    .line 10678
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3h;->A0C:I

    .line 10679
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3h;->A00:I

    .line 10680
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3h;->A0P:Z

    .line 10681
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3h;->A0O:Z

    .line 10682
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3h;->A0N:Z

    .line 10683
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0G:Ljava/util/HashMap;

    .line 10684
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0H:Ljava/util/HashSet;

    .line 10685
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 10686
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3h;-><init>()V

    .line 10687
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/3h;->A0n(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/3h;

    .line 10688
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/3h;->A0o(Landroid/content/Context;Z)Lcom/facebook/ads/redexgen/X/3h;

    .line 10689
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 6

    .line 10690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10691
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pc;->A0Q()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/pc;->A0U:Lcom/facebook/ads/redexgen/X/pc;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/pc;->A06:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A06:I

    .line 10692
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pc;->A0R()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/pc;->A0U:Lcom/facebook/ads/redexgen/X/pc;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/pc;->A05:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A05:I

    .line 10693
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pc;->A0c()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/pc;->A0U:Lcom/facebook/ads/redexgen/X/pc;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/pc;->A04:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A04:I

    .line 10694
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pc;->A0k()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/pc;->A0U:Lcom/facebook/ads/redexgen/X/pc;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/pc;->A03:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A03:I

    .line 10695
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pc;->A0l()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/pc;->A0U:Lcom/facebook/ads/redexgen/X/pc;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/pc;->A0A:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0A:I

    .line 10696
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pc;->A0m()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/pc;->A0U:Lcom/facebook/ads/redexgen/X/pc;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/pc;->A09:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A09:I

    .line 10697
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pc;->A0n()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/pc;->A0U:Lcom/facebook/ads/redexgen/X/pc;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/pc;->A08:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A08:I

    .line 10698
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pc;->A0o()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/pc;->A0U:Lcom/facebook/ads/redexgen/X/pc;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/pc;->A07:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A07:I

    .line 10699
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pc;->A0p()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/pc;->A0U:Lcom/facebook/ads/redexgen/X/pc;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/pc;->A0F:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0F:I

    .line 10700
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pc;->A0q()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/pc;->A0U:Lcom/facebook/ads/redexgen/X/pc;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/pc;->A0E:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0E:I

    .line 10701
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pc;->A0S()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/pc;->A0U:Lcom/facebook/ads/redexgen/X/pc;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/pc;->A0Q:Z

    .line 10702
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0Q:Z

    .line 10703
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pc;->A0T()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v0, v4, [Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/ka;->A00(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 10704
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/BP;->A07([Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0M:Ljava/util/List;

    .line 10705
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pc;->A0U()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/pc;->A0U:Lcom/facebook/ads/redexgen/X/pc;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/pc;->A0D:I

    .line 10706
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0D:I

    .line 10707
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pc;->A0V()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-array v0, v4, [Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/ka;->A00(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 10708
    .local v0, "preferredVideoLanguages1":[Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3h;->A0G([Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0L:Ljava/util/List;

    .line 10709
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pc;->A0W()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-array v0, v4, [Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/ka;->A00(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 10710
    .local v2, "preferredAudioLanguages1":[Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3h;->A0G([Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0I:Ljava/util/List;

    .line 10711
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pc;->A0X()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/pc;->A0U:Lcom/facebook/ads/redexgen/X/pc;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/pc;->A0B:I

    .line 10712
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0B:I

    .line 10713
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pc;->A0Y()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/pc;->A0U:Lcom/facebook/ads/redexgen/X/pc;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/pc;->A02:I

    .line 10714
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A02:I

    .line 10715
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pc;->A0Z()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/pc;->A0U:Lcom/facebook/ads/redexgen/X/pc;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/pc;->A01:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A01:I

    .line 10716
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pc;->A0a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-array v0, v4, [Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/ka;->A00(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 10717
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/BP;->A07([Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0J:Ljava/util/List;

    .line 10718
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pc;->A0b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-array v0, v4, [Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/ka;->A00(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 10719
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3h;->A0G([Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0K:Ljava/util/List;

    .line 10720
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pc;->A0d()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/pc;->A0U:Lcom/facebook/ads/redexgen/X/pc;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/pc;->A0C:I

    .line 10721
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0C:I

    .line 10722
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pc;->A0e()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/pc;->A0U:Lcom/facebook/ads/redexgen/X/pc;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/pc;->A00:I

    .line 10723
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A00:I

    .line 10724
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pc;->A0f()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/pc;->A0U:Lcom/facebook/ads/redexgen/X/pc;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/pc;->A0P:Z

    .line 10725
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0P:Z

    .line 10726
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pc;->A0g()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/pc;->A0U:Lcom/facebook/ads/redexgen/X/pc;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/pc;->A0O:Z

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0O:Z

    .line 10727
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pc;->A0h()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/pc;->A0U:Lcom/facebook/ads/redexgen/X/pc;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/pc;->A0N:Z

    .line 10728
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0N:Z

    .line 10729
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pc;->A0i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 10730
    .local v3, "overrideBundleList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-nez v1, :cond_0

    .line 10731
    invoke-static {}, Lcom/facebook/ads/redexgen/X/jW;->A01()Ljava/util/List;

    move-result-object v5

    .line 10732
    .local v4, "overrideList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/TrackSelectionOverride;>;"
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0G:Ljava/util/HashMap;

    .line 10733
    const/4 v3, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 10734
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/pe;

    .line 10735
    .local p0, "override":Lcom/facebook/ads/redexgen/X/pe;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3h;->A0G:Ljava/util/HashMap;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/pe;->A00:Lcom/facebook/ads/redexgen/X/pg;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10736
    .end local p0    # "override":Lcom/facebook/ads/redexgen/X/pe;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 10737
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/pe;->A02:Lcom/facebook/ads/redexgen/X/23;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A01(Lcom/facebook/ads/redexgen/X/23;Ljava/util/List;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v5

    goto :goto_0

    .line 10738
    .end local v5    # "i":I
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pc;->A0j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    new-array v0, v4, [I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/ka;->A00(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 10739
    .local v5, "disabledTrackTypeArray":[I
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0H:Ljava/util/HashSet;

    .line 10740
    array-length v2, v3

    :goto_2
    if-ge v4, v2, :cond_2

    aget v0, v3, v4

    .line 10741
    .local p1, "disabledTrackType":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3h;->A0H:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10742
    .end local p1    # "disabledTrackType":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 10743
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/pc;)V
    .locals 0

    .line 10744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10745
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3h;->A0R(Lcom/facebook/ads/redexgen/X/pc;)V

    .line 10746
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/3h;)I
    .locals 0

    .line 10747
    iget p0, p0, Lcom/facebook/ads/redexgen/X/3h;->A06:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/3h;)I
    .locals 0

    .line 10748
    iget p0, p0, Lcom/facebook/ads/redexgen/X/3h;->A05:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/3h;)I
    .locals 0

    .line 10749
    iget p0, p0, Lcom/facebook/ads/redexgen/X/3h;->A04:I

    return p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/3h;)I
    .locals 0

    .line 10750
    iget p0, p0, Lcom/facebook/ads/redexgen/X/3h;->A03:I

    return p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/3h;)I
    .locals 0

    .line 10751
    iget p0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0A:I

    return p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/3h;)I
    .locals 0

    .line 10752
    iget p0, p0, Lcom/facebook/ads/redexgen/X/3h;->A09:I

    return p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/3h;)I
    .locals 0

    .line 10753
    iget p0, p0, Lcom/facebook/ads/redexgen/X/3h;->A08:I

    return p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/3h;)I
    .locals 0

    .line 10754
    iget p0, p0, Lcom/facebook/ads/redexgen/X/3h;->A07:I

    return p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/3h;)I
    .locals 0

    .line 10755
    iget p0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0F:I

    return p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/3h;)I
    .locals 0

    .line 10756
    iget p0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0E:I

    return p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/3h;)I
    .locals 0

    .line 10757
    iget p0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0D:I

    return p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/3h;)I
    .locals 0

    .line 10758
    iget p0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0B:I

    return p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/3h;)I
    .locals 0

    .line 10759
    iget p0, p0, Lcom/facebook/ads/redexgen/X/3h;->A02:I

    return p0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/3h;)I
    .locals 0

    .line 10760
    iget p0, p0, Lcom/facebook/ads/redexgen/X/3h;->A01:I

    return p0
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/3h;)I
    .locals 0

    .line 10761
    iget p0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0C:I

    return p0
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/3h;)I
    .locals 0

    .line 10762
    iget p0, p0, Lcom/facebook/ads/redexgen/X/3h;->A00:I

    return p0
.end method

.method public static A0G([Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/BP;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/ads/redexgen/X/BP<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10763
    invoke-static {}, Lcom/facebook/ads/redexgen/X/BP;->A01()Lcom/facebook/ads/redexgen/X/2K;

    move-result-object v4

    .line 10764
    .local v0, "listBuilder":Lcom/facebook/ads/redexgen/X/2K;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, v3, v1

    .line 10765
    .local v4, "language":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/2K;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/2K;

    .line 10766
    .end local v4    # "language":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10767
    :cond_0
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/2K;->A05()Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    return-object v0
.end method

.method public static A0H(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/3h;->A0R:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x22

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/3h;)Ljava/util/HashMap;
    .locals 0

    .line 10768
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0G:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/3h;)Ljava/util/HashSet;
    .locals 0

    .line 10769
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0H:Ljava/util/HashSet;

    return-object p0
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/3h;)Ljava/util/List;
    .locals 0

    .line 10770
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0M:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/3h;)Ljava/util/List;
    .locals 0

    .line 10771
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0L:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/3h;)Ljava/util/List;
    .locals 0

    .line 10772
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0I:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic A0N(Lcom/facebook/ads/redexgen/X/3h;)Ljava/util/List;
    .locals 0

    .line 10773
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0J:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic A0O(Lcom/facebook/ads/redexgen/X/3h;)Ljava/util/List;
    .locals 0

    .line 10774
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0K:Ljava/util/List;

    return-object p0
.end method

.method public static A0P()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/3h;->A0R:[B

    return-void

    :array_0
    .array-data 1
        0x3ft
        0x3dt
        0x2ct
        0x28t
        0x35t
        0x33t
        0x32t
        0x35t
        0x32t
        0x3bt
    .end array-data
.end method

.method private A0Q(Landroid/content/Context;)V
    .locals 3

    .line 10775
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x17

    if-ge v1, v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10776
    return-void

    .line 10777
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3h;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/CaptioningManager;

    .line 10778
    .local v0, "captioningManager":Landroid/view/accessibility/CaptioningManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10779
    .end local v1
    :cond_1
    return-void

    .line 10780
    :cond_2
    const/16 v0, 0x440

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0C:I

    .line 10781
    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 10782
    .local v1, "preferredLocale":Ljava/util/Locale;
    if-eqz v0, :cond_3

    .line 10783
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0o(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/BP;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0K:Ljava/util/List;

    .line 10784
    :cond_3
    return-void
.end method

.method private A0R(Lcom/facebook/ads/redexgen/X/pc;)V
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "preferredVideoMimeTypes",
            "preferredAudioLanguages",
            "preferredAudioMimeTypes",
            "preferredTextLanguages",
            "overrides",
            "disabledTrackTypes"
        }
    .end annotation

    .line 10785
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pc;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A06:I

    .line 10786
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pc;->A05:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A05:I

    .line 10787
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pc;->A04:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A04:I

    .line 10788
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pc;->A03:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A03:I

    .line 10789
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pc;->A0A:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0A:I

    .line 10790
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pc;->A09:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A09:I

    .line 10791
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pc;->A08:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A08:I

    .line 10792
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pc;->A07:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A07:I

    .line 10793
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pc;->A0F:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0F:I

    .line 10794
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pc;->A0E:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0E:I

    .line 10795
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/pc;->A0Q:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0Q:Z

    .line 10796
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/pc;->A0M:Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0M:Ljava/util/List;

    .line 10797
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pc;->A0D:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0D:I

    .line 10798
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/pc;->A0L:Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0L:Ljava/util/List;

    .line 10799
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/pc;->A0I:Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0I:Ljava/util/List;

    .line 10800
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pc;->A0B:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0B:I

    .line 10801
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pc;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A02:I

    .line 10802
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pc;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A01:I

    .line 10803
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/pc;->A0J:Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0J:Ljava/util/List;

    .line 10804
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/pc;->A0K:Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0K:Ljava/util/List;

    .line 10805
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pc;->A0C:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0C:I

    .line 10806
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pc;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A00:I

    .line 10807
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/pc;->A0P:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0P:Z

    .line 10808
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/pc;->A0O:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0O:Z

    .line 10809
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/pc;->A0N:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0N:Z

    .line 10810
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/pc;->A0H:Lcom/facebook/ads/redexgen/X/BO;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0H:Ljava/util/HashSet;

    .line 10811
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/pc;->A0G:Lcom/facebook/ads/redexgen/X/oX;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0G:Ljava/util/HashMap;

    .line 10812
    return-void
.end method

.method public static synthetic A0S(Lcom/facebook/ads/redexgen/X/3h;)Z
    .locals 0

    .line 10813
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0Q:Z

    return p0
.end method

.method public static synthetic A0T(Lcom/facebook/ads/redexgen/X/3h;)Z
    .locals 0

    .line 10814
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0P:Z

    return p0
.end method

.method public static synthetic A0U(Lcom/facebook/ads/redexgen/X/3h;)Z
    .locals 0

    .line 10815
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0O:Z

    return p0
.end method

.method public static synthetic A0V(Lcom/facebook/ads/redexgen/X/3h;)Z
    .locals 0

    .line 10816
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/3h;->A0N:Z

    return p0
.end method


# virtual methods
.method public A0W(Lcom/facebook/ads/redexgen/X/pc;)Lcom/facebook/ads/redexgen/X/3h;
    .locals 0

    .line 10817
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3h;->A0R(Lcom/facebook/ads/redexgen/X/pc;)V

    .line 10818
    return-object p0
.end method

.method public A0m(IIZ)Lcom/facebook/ads/redexgen/X/3h;
    .locals 0

    .line 10819
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3h;->A0F:I

    .line 10820
    iput p2, p0, Lcom/facebook/ads/redexgen/X/3h;->A0E:I

    .line 10821
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/3h;->A0Q:Z

    .line 10822
    return-object p0
.end method

.method public A0n(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/3h;
    .locals 2

    .line 10823
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_0

    .line 10824
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3h;->A0Q(Landroid/content/Context;)V

    .line 10825
    :cond_0
    return-object p0
.end method

.method public A0o(Landroid/content/Context;Z)Lcom/facebook/ads/redexgen/X/3h;
    .locals 2

    .line 10826
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/5C;->A0W(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 10827
    .local v0, "viewportSize":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v0, p2}, Lcom/facebook/ads/redexgen/X/3h;->A0m(IIZ)Lcom/facebook/ads/redexgen/X/3h;

    move-result-object v0

    return-object v0
.end method

.method public A0p()Lcom/facebook/ads/redexgen/X/pc;
    .locals 1

    .line 10828
    new-instance v0, Lcom/facebook/ads/redexgen/X/pc;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/pc;-><init>(Lcom/facebook/ads/redexgen/X/3h;)V

    return-object v0
.end method
