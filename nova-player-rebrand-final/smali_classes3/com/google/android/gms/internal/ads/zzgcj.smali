.class final Lcom/google/android/gms/internal/ads/zzgcj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcd;


# instance fields
.field private final zza:I

.field private final zzb:[B


# direct methods
.method constructor <init>(I[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgcj;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgcj;->zzb:[B

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgcj;->zza:I

    return v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgcj;->zzb:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
