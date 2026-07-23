.class final Lcom/google/android/gms/internal/ads/zzhxs;
.super Ljava/lang/ThreadLocal;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzhxt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzhxt;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhxs;->zza:Lcom/google/android/gms/internal/ads/zzhxt;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhxs;->zza()Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method protected final zza()Ljavax/crypto/Mac;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhxe;->zzb:Lcom/google/android/gms/internal/ads/zzhxe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhxs;->zza:Lcom/google/android/gms/internal/ads/zzhxt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhxt;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzhxe;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhxt;->zzc()Ljava/security/Key;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    .line 3
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
