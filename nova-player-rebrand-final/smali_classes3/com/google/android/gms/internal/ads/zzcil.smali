.class final synthetic Lcom/google/android/gms/internal/ads/zzcil;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzha;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcit;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcit;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcil;->zza:Lcom/google/android/gms/internal/ads/zzcit;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzb:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzc:Z

    return-void
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/ads/zzhb;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zza:Lcom/google/android/gms/internal/ads/zzcit;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzb:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzc:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcit;->zzU(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzhb;

    move-result-object v0

    return-object v0
.end method
