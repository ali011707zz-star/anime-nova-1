.class final synthetic Lcom/google/android/gms/internal/ads/zzcii;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzha;


# instance fields
.field private final synthetic zza:[B


# direct methods
.method synthetic constructor <init>([B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcii;->zza:[B

    return-void
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/ads/zzhb;
    .locals 2

    sget v0, Lcom/google/android/gms/internal/ads/zzcit;->$r8$clinit:I

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcii;->zza:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgw;-><init>([B)V

    return-object v0
.end method
