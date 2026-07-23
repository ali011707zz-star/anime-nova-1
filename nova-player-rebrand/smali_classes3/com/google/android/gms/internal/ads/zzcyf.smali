.class public final Lcom/google/android/gms/internal/ads/zzcyf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/zza;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcyj;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfjk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcyj;Lcom/google/android/gms/internal/ads/zzfjk;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyf;->zza:Lcom/google/android/gms/internal/ads/zzcyj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcyf;->zzb:Lcom/google/android/gms/internal/ads/zzfjk;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyf;->zzb:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcyf;->zza:Lcom/google/android/gms/internal/ads/zzcyj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcyj;->zza(Ljava/lang/String;)V

    return-void
.end method
