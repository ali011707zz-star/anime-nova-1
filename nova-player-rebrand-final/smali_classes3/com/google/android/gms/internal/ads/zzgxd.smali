.class final Lcom/google/android/gms/internal/ads/zzgxd;
.super Ljava/io/OutputStream;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "ByteStreams.nullOutputStream()"

    return-object v0
.end method

.method public final write(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public final write([B)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final write([BII)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/2addr p3, p2

    array-length p1, p1

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgrc;->zzo(III)V

    return-void
.end method
