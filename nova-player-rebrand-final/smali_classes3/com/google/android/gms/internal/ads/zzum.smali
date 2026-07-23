.class public Lcom/google/android/gms/internal/ads/zzum;
.super Lcom/google/android/gms/internal/ads/zzif;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:I


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzun;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzun;->zza:Ljava/lang/String;

    .line 1
    :goto_0
    const-string v0, "Decoder failed: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzif;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    instance-of p2, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz p2, :cond_1

    .line 3
    check-cast p1, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p1}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/media/MediaCodec$CodecException;->getErrorCode()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzum;->zza:I

    return-void
.end method
