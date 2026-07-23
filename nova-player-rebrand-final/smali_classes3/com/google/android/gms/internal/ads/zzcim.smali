.class final synthetic Lcom/google/android/gms/internal/ads/zzcim;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzha;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcit;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzha;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcit;Lcom/google/android/gms/internal/ads/zzha;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcim;->zza:Lcom/google/android/gms/internal/ads/zzcit;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcim;->zzb:Lcom/google/android/gms/internal/ads/zzha;

    return-void
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/ads/zzhb;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcim;->zza:Lcom/google/android/gms/internal/ads/zzcit;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcim;->zzb:Lcom/google/android/gms/internal/ads/zzha;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcit;->zzV(Lcom/google/android/gms/internal/ads/zzha;)Lcom/google/android/gms/internal/ads/zzhb;

    move-result-object v0

    return-object v0
.end method
