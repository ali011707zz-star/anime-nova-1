.class public final Lcom/google/android/gms/internal/ads/zzri;
.super Ljava/lang/Exception;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:I

.field public final zzb:Z

.field public final zzc:Lcom/google/android/gms/internal/ads/zzv;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzv;Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x19

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "AudioTrack write failed: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzri;->zzb:Z

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzri;->zzc:Lcom/google/android/gms/internal/ads/zzv;

    return-void
.end method
