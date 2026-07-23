.class public final Lcom/google/android/gms/internal/pal/zzacf;
.super Ljava/io/IOException;
.source "com.google.android.gms:play-services-pal@@20.0.1"


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "CodedOutputStream was writing to a flat byte array and ran out of space."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
