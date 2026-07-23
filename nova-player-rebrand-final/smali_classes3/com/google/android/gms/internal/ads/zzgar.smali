.class final Lcom/google/android/gms/internal/ads/zzgar;
.super Lcom/google/android/gms/internal/ads/zzgyh;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field zza:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgyh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgar;->zza:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyh;->zza(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final zzb(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyh;->zzb(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method protected final zzc()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgar;->zza:Ljava/lang/Object;

    return-void
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgar;->zza:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
