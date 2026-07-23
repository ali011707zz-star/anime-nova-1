.class public final Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;
.super Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceCommand;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ib;,
        Lcom/facebook/ads/redexgen/X/Ia;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Ib;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 532
    new-instance v0, Lcom/facebook/ads/redexgen/X/IZ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IZ;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 23336
    invoke-direct {p0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceCommand;-><init>()V

    .line 23337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 23338
    .local v0, "eventsSize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 23339
    .local v1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;>;"
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 23340
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ib;->A01(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/Ib;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23341
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23342
    .end local v2    # "i":I
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;->A00:Ljava/util/List;

    .line 23343
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/ads/redexgen/X/IZ;)V
    .locals 0

    .line 23344
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Ib;",
            ">;)V"
        }
    .end annotation

    .line 23345
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;>;"
    invoke-direct {p0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceCommand;-><init>()V

    .line 23346
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;->A00:Ljava/util/List;

    .line 23347
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;
    .locals 4

    .line 23348
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v3

    .line 23349
    .local v0, "spliceCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 23350
    .local v1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;>;"
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 23351
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Ib;->A03(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/Ib;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23352
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23353
    .end local v2    # "i":I
    :cond_0
    new-instance v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;

    invoke-direct {v0, v2}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 23354
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 23355
    .local v0, "eventsSize":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 23356
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 23357
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;->A00:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ib;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Ib;->A05(Lcom/facebook/ads/redexgen/X/Ib;Landroid/os/Parcel;)V

    .line 23358
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23359
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
