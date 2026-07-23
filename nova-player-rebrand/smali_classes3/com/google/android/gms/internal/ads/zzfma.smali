.class final synthetic Lcom/google/android/gms/internal/ads/zzfma;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgyw;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfmb;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfls;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfkz;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzflt;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfmb;Lcom/google/android/gms/internal/ads/zzfls;Lcom/google/android/gms/internal/ads/zzfkz;Lcom/google/android/gms/internal/ads/zzflt;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfma;->zza:Lcom/google/android/gms/internal/ads/zzfmb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfma;->zzb:Lcom/google/android/gms/internal/ads/zzfls;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfma;->zzc:Lcom/google/android/gms/internal/ads/zzfkz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfma;->zzd:Lcom/google/android/gms/internal/ads/zzflt;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfma;->zza:Lcom/google/android/gms/internal/ads/zzfmb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfma;->zzb:Lcom/google/android/gms/internal/ads/zzfls;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfma;->zzc:Lcom/google/android/gms/internal/ads/zzfkz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfma;->zzd:Lcom/google/android/gms/internal/ads/zzflt;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfli;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzfmb;->zzc(Lcom/google/android/gms/internal/ads/zzfls;Lcom/google/android/gms/internal/ads/zzfkz;Lcom/google/android/gms/internal/ads/zzflt;Lcom/google/android/gms/internal/ads/zzfli;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
