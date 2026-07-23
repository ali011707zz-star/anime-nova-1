.class public interface abstract Lcom/google/android/gms/internal/ads/zzco;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final zza:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzco;->zza:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public abstract zza(J)J
.end method

.method public abstract zzb(Lcom/google/android/gms/internal/ads/zzcl;)Lcom/google/android/gms/internal/ads/zzcl;
.end method

.method public abstract zzc()Z
.end method

.method public abstract zzd(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract zze()V
.end method

.method public abstract zzf()Ljava/nio/ByteBuffer;
.end method

.method public abstract zzg()Z
.end method

.method public abstract zzi(Lcom/google/android/gms/internal/ads/zzcm;)V
.end method

.method public abstract zzj()V
.end method
