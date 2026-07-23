.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/zzfs;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzfw;


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzfw;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfs;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzfw;

    return-void
.end method


# virtual methods
.method public final synthetic onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfs;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzfw;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zzh(Ljava/lang/Exception;)V

    return-void
.end method
