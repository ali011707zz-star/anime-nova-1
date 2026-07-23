.class final synthetic Lcom/google/android/gms/internal/ads/zzpa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdz;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzpc;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbb;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzpc;Lcom/google/android/gms/internal/ads/zzbb;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpa;->zza:Lcom/google/android/gms/internal/ads/zzpc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpa;->zzb:Lcom/google/android/gms/internal/ads/zzbb;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzs;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpa;->zza:Lcom/google/android/gms/internal/ads/zzpc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpa;->zzb:Lcom/google/android/gms/internal/ads/zzbb;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzna;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzpc;->zzab(Lcom/google/android/gms/internal/ads/zzbb;Lcom/google/android/gms/internal/ads/zzna;Lcom/google/android/gms/internal/ads/zzs;)V

    return-void
.end method
