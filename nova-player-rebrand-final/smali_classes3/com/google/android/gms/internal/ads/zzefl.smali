.class final synthetic Lcom/google/android/gms/internal/ads/zzefl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgyw;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzbzu;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbzu;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefl;->zza:Lcom/google/android/gms/internal/ads/zzbzu;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    check-cast p1, Ljava/io/InputStream;

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgxf;->zza(Ljava/io/InputStream;)[B

    move-result-object p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzefl;->zza:Lcom/google/android/gms/internal/ads/zzbzu;

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzbzu;->zzj:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
