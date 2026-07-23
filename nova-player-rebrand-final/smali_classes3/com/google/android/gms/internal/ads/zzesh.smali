.class final synthetic Lcom/google/android/gms/internal/ads/zzesh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzesj;

.field private final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zze;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzesj;Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesh;->zza:Lcom/google/android/gms/internal/ads/zzesj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzesh;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesh;->zza:Lcom/google/android/gms/internal/ads/zzesj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzesj;->zze:Lcom/google/android/gms/internal/ads/zzesm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzesm;->zzf()Lcom/google/android/gms/internal/ads/zzesc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzesc;->zze()Lcom/google/android/gms/internal/ads/zzdbi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzesh;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdbi;->zzdI(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method
