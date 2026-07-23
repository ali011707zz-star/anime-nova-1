.class public abstract Lcom/google/android/gms/internal/ads/zzcfk;
.super Landroid/view/TextureView;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcgh;


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzcfy;

.field protected final zzb:Lcom/google/android/gms/internal/ads/zzcgi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfy;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcfy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfk;->zza:Lcom/google/android/gms/internal/ads/zzcfy;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcgi;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/ads/zzcgi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgh;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfk;->zzb:Lcom/google/android/gms/internal/ads/zzcgi;

    return-void
.end method


# virtual methods
.method public zzA(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public zzB(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public zzC(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public abstract zza()Ljava/lang/String;
.end method

.method public abstract zzb(Lcom/google/android/gms/internal/ads/zzcfj;)V
.end method

.method public abstract zzc(Ljava/lang/String;)V
.end method

.method public abstract zzd()V
.end method

.method public abstract zze()V
.end method

.method public abstract zzf()V
.end method

.method public abstract zzg()I
.end method

.method public abstract zzh()I
.end method

.method public abstract zzi(I)V
.end method

.method public abstract zzj(FF)V
.end method

.method public abstract zzk()I
.end method

.method public abstract zzl()I
.end method

.method public abstract zzm()J
.end method

.method public abstract zzn()J
.end method

.method public abstract zzo()J
.end method

.method public abstract zzp()I
.end method

.method public abstract zzq()V
.end method

.method public zzw()Ljava/lang/Integer;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public zzx(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzc(Ljava/lang/String;)V

    return-void
.end method

.method public zzy(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public zzz(I)V
    .locals 0

    .line 0
    return-void
.end method
