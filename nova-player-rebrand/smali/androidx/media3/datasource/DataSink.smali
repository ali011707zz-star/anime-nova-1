.class public interface abstract Landroidx/media3/datasource/DataSink;
.super Ljava/lang/Object;
.source "DataSink.java"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/DataSink$Factory;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract open(Landroidx/media3/datasource/DataSpec;)V
.end method

.method public abstract write([BII)V
.end method
