.class public abstract Lcom/facebook/ads/redexgen/X/22;
.super Landroid/os/Binder;
.source ""


# static fields
.field public static final A00:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 122
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x1e

    if-lt v1, v0, :cond_0

    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    move-result v0

    :goto_0
    sput v0, Lcom/facebook/ads/redexgen/X/22;->A00:I

    .line 123
    return-void

    .line 124
    :cond_0
    const/high16 v0, 0x10000

    goto :goto_0
.end method

.method public static A00(Landroid/os/IBinder;)Lcom/facebook/ads/redexgen/X/BP;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")",
            "Lcom/facebook/ads/redexgen/X/BP<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 8791
    invoke-static {}, Lcom/facebook/ads/redexgen/X/BP;->A01()Lcom/facebook/ads/redexgen/X/2K;

    move-result-object v5

    .line 8792
    .local v0, "builder":Lcom/facebook/ads/redexgen/X/2K;, "Lcom/google/common/collect/ImmutableList$Builder<Landroid/os/Bundle;>;"
    const/4 v4, 0x0

    .line 8793
    .local v1, "index":I
    const/4 v0, 0x1

    .line 8794
    .local v2, "replyCode":I
    :goto_0
    if-eqz v0, :cond_1

    .line 8795
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 8796
    .local v3, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 8797
    .local v4, "reply":Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8798
    const/4 v0, 0x0

    const/4 v1, 0x1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p0, v1, v3, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8799
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 8800
    invoke-virtual {v2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/2K;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/2K;

    .line 8801
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8802
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 8803
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 8804
    .end local v3    # "data":Landroid/os/Parcel;
    .end local v4    # "reply":Landroid/os/Parcel;
    goto :goto_0

    .line 8805
    .restart local v3    # "data":Landroid/os/Parcel;
    .restart local v4    # "reply":Landroid/os/Parcel;
    :catch_0
    move-exception v1

    .line 8806
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "builder":Lcom/facebook/ads/redexgen/X/2K;, "Lcom/google/common/collect/ImmutableList$Builder<Landroid/os/Bundle;>;"
    .end local v1    # "index":I
    .end local v2    # "replyCode":I
    .end local v3    # "data":Landroid/os/Parcel;
    .end local v4    # "reply":Landroid/os/Parcel;
    .end local p1
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8807
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v0    # "builder":Lcom/facebook/ads/redexgen/X/2K;, "Lcom/google/common/collect/ImmutableList$Builder<Landroid/os/Bundle;>;"
    .restart local v1    # "index":I
    .restart local v2    # "replyCode":I
    .restart local v3    # "data":Landroid/os/Parcel;
    .restart local v4    # "reply":Landroid/os/Parcel;
    .restart local p1
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 8808
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 8809
    throw v0

    .line 8810
    .end local v3    # "data":Landroid/os/Parcel;
    .end local v4    # "reply":Landroid/os/Parcel;
    :cond_1
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/2K;->A05()Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    return-object v0
.end method
