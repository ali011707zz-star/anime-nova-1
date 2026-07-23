.class public abstract Lcom/facebook/ads/redexgen/X/nv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cx;


# static fields
.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/os/Looper;

.field public A01:Lcom/facebook/ads/androidx/media3/common/Timeline;

.field public A02:Lcom/facebook/ads/redexgen/X/8O;

.field public final A03:Lcom/facebook/ads/redexgen/X/A1;

.field public final A04:Lcom/facebook/ads/redexgen/X/D8;

.field public final A05:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/Cw;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/facebook/ads/redexgen/X/Cw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3313
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "KBisateWM8YQ4arKDgRYpdTDxezzMkCv"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VJ2uSooodcJBZOLyoDYKaqw5tYDrMz4W"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "bemaZsDF2tY6J54Bg3tOUH55klLpC"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "LnVxhCvG0lD6F7ZPu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7ofy39p1yDzqV7NnIWFVVnn8VzEJdml2"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3pklWVRHTZe0TjeZrFE3TnxhkITdP"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "TfKHOeXRiNIOMg3PDS"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "WMeybOD3P6lu5fyh7Idh"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/nv;->A07:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 101776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101777
    const/4 v1, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nv;->A05:Ljava/util/ArrayList;

    .line 101778
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nv;->A06:Ljava/util/HashSet;

    .line 101779
    new-instance v0, Lcom/facebook/ads/redexgen/X/D8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/D8;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nv;->A04:Lcom/facebook/ads/redexgen/X/D8;

    .line 101780
    new-instance v0, Lcom/facebook/ads/redexgen/X/A1;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/A1;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nv;->A03:Lcom/facebook/ads/redexgen/X/A1;

    .line 101781
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/8O;
    .locals 1

    .line 101782
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nv;->A02:Lcom/facebook/ads/redexgen/X/8O;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8O;

    return-object v0
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/no;)Lcom/facebook/ads/redexgen/X/A1;
    .locals 2

    .line 101783
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nv;->A03:Lcom/facebook/ads/redexgen/X/A1;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/A1;->A00(ILcom/facebook/ads/redexgen/X/no;)Lcom/facebook/ads/redexgen/X/A1;

    move-result-object v0

    return-object v0
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/no;)Lcom/facebook/ads/redexgen/X/D8;
    .locals 4

    .line 101784
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/nv;->A04:Lcom/facebook/ads/redexgen/X/D8;

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {v3, v2, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/D8;->A02(ILcom/facebook/ads/redexgen/X/no;J)Lcom/facebook/ads/redexgen/X/D8;

    move-result-object v0

    return-object v0
.end method

.method public A03()V
    .locals 0

    .line 101785
    return-void
.end method

.method public A04()V
    .locals 0

    .line 101786
    return-void
.end method

.method public final A05(Lcom/facebook/ads/androidx/media3/common/Timeline;)V
    .locals 2

    .line 101787
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/nv;->A01:Lcom/facebook/ads/androidx/media3/common/Timeline;

    .line 101788
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nv;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Cw;

    .line 101789
    .local v1, "caller":Lcom/facebook/ads/redexgen/X/Cw;
    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Cw;->AG1(Lcom/facebook/ads/redexgen/X/Cx;Lcom/facebook/ads/androidx/media3/common/Timeline;)V

    .line 101790
    .end local v1    # "caller":Lcom/facebook/ads/redexgen/X/Cw;
    goto :goto_0

    .line 101791
    :cond_0
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/Cw;)V
    .locals 2

    .line 101792
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nv;->A06:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 101793
    .local v0, "wasEnabled":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nv;->A06:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 101794
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nv;->A06:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101795
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nv;->A03()V

    .line 101796
    :cond_0
    return-void
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/Cw;)V
    .locals 2

    .line 101797
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nv;->A00:Landroid/os/Looper;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101798
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nv;->A06:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    .line 101799
    .local v0, "wasDisabled":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nv;->A06:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101800
    if-eqz v1, :cond_0

    .line 101801
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nv;->A04()V

    .line 101802
    :cond_0
    return-void
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/Cw;Lcom/facebook/ads/redexgen/X/5t;Lcom/facebook/ads/redexgen/X/8O;)V
    .locals 3

    .line 101803
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 101804
    .local v0, "looper":Landroid/os/Looper;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nv;->A00:Landroid/os/Looper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nv;->A00:Landroid/os/Looper;

    if-ne v0, v2, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 101805
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/nv;->A02:Lcom/facebook/ads/redexgen/X/8O;

    .line 101806
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nv;->A01:Lcom/facebook/ads/androidx/media3/common/Timeline;

    .line 101807
    .local v1, "timeline":Lcom/facebook/ads/androidx/media3/common/Timeline;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nv;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101808
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nv;->A00:Landroid/os/Looper;

    if-nez v0, :cond_2

    .line 101809
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/nv;->A00:Landroid/os/Looper;

    .line 101810
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nv;->A06:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101811
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/nv;->A0A(Lcom/facebook/ads/redexgen/X/5t;)V

    .line 101812
    :cond_1
    :goto_1
    return-void

    .line 101813
    :cond_2
    if-eqz v1, :cond_1

    .line 101814
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/nv;->A07(Lcom/facebook/ads/redexgen/X/Cw;)V

    .line 101815
    invoke-interface {p1, p0, v1}, Lcom/facebook/ads/redexgen/X/Cw;->AG1(Lcom/facebook/ads/redexgen/X/Cx;Lcom/facebook/ads/androidx/media3/common/Timeline;)V

    goto :goto_1

    .line 101816
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract A09()V
.end method

.method public abstract A0A(Lcom/facebook/ads/redexgen/X/5t;)V
.end method

.method public final A3z(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/D9;)V
    .locals 1

    .line 101817
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101818
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101819
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nv;->A04:Lcom/facebook/ads/redexgen/X/D8;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/D8;->A04(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/D9;)V

    .line 101820
    return-void
.end method

.method public final AH7(Lcom/facebook/ads/redexgen/X/Cw;Lcom/facebook/ads/redexgen/X/5t;)V
    .locals 1

    .line 101821
    sget-object v0, Lcom/facebook/ads/redexgen/X/8O;->A03:Lcom/facebook/ads/redexgen/X/8O;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/nv;->A08(Lcom/facebook/ads/redexgen/X/Cw;Lcom/facebook/ads/redexgen/X/5t;Lcom/facebook/ads/redexgen/X/8O;)V

    .line 101822
    return-void
.end method

.method public final AHl(Lcom/facebook/ads/redexgen/X/Cw;)V
    .locals 3

    .line 101823
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nv;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 101824
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nv;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101825
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nv;->A00:Landroid/os/Looper;

    .line 101826
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nv;->A01:Lcom/facebook/ads/androidx/media3/common/Timeline;

    .line 101827
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nv;->A02:Lcom/facebook/ads/redexgen/X/8O;

    .line 101828
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nv;->A06:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/nv;->A07:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 101829
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/nv;->A06(Lcom/facebook/ads/redexgen/X/Cw;)V

    goto :goto_0

    .line 101830
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/nv;->A07:[Ljava/lang/String;

    const-string v1, "pnZ7WVnnf2PAl7J7h"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "ddcJoNElLz9Uvwup8w"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nv;->A09()V

    .line 101831
    :goto_0
    return-void
.end method

.method public final AIS(Lcom/facebook/ads/redexgen/X/D9;)V
    .locals 1

    .line 101832
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nv;->A04:Lcom/facebook/ads/redexgen/X/D8;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/D8;->A0D(Lcom/facebook/ads/redexgen/X/D9;)V

    .line 101833
    return-void
.end method
