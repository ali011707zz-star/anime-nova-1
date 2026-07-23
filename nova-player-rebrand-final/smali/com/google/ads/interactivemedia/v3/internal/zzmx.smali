.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/zzmx;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzmy;

.field private final synthetic zzb:Landroid/os/Bundle;


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzmy;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmx;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzmy;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmx;->zzb:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmx;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzmy;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzmz;

    .line 1
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzmu;

    invoke-direct {v1, v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzmu;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzmy;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzmm;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmx;->zzb:Landroid/os/Bundle;

    invoke-interface {p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzmm;->zze(Landroid/os/Bundle;Lcom/google/ads/interactivemedia/v3/internal/zzmj;)V

    return-void
.end method
