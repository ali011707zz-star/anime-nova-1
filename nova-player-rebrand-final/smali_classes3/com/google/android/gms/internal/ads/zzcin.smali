.class final synthetic Lcom/google/android/gms/internal/ads/zzcin;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzha;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzha;

.field private final synthetic zzb:[B


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzha;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcin;->zza:Lcom/google/android/gms/internal/ads/zzha;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcin;->zzb:[B

    return-void
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/ads/zzhb;
    .locals 4

    sget v0, Lcom/google/android/gms/internal/ads/zzcit;->$r8$clinit:I

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcin;->zza:Lcom/google/android/gms/internal/ads/zzha;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzha;->zza()Lcom/google/android/gms/internal/ads/zzhb;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcin;->zzb:[B

    .line 2
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgw;-><init>([B)V

    array-length v2, v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcih;

    invoke-direct {v3, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcih;-><init>(Lcom/google/android/gms/internal/ads/zzhb;ILcom/google/android/gms/internal/ads/zzhb;)V

    return-object v3
.end method
