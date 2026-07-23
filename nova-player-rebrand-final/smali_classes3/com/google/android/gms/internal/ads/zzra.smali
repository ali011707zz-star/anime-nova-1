.class final synthetic Lcom/google/android/gms/internal/ads/zzra;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzrb;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzin;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzrb;Lcom/google/android/gms/internal/ads/zzin;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzra;->zza:Lcom/google/android/gms/internal/ads/zzrb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzra;->zzb:Lcom/google/android/gms/internal/ads/zzin;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->zza:Lcom/google/android/gms/internal/ads/zzrb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzra;->zzb:Lcom/google/android/gms/internal/ads/zzin;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzrb;->zzo(Lcom/google/android/gms/internal/ads/zzin;)V

    return-void
.end method
